using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Extensions.Options;
using ZYH.Common;
using ZYH.Common.Options;
using ZYH.Store.Manage.Entity.Extend;
using ZYH.Store.Manage.Entity.Models;
using ZYH.Store.Manage.Service.Enum;
using ZYH.Store.Manage.Service.Interface;

namespace ZYH.Store.Manage.Service.HR
{
    public class DepartmentService : IDepartmentService
    {

        private ZYHmanageContext _db = null;
        private SystemInfo systeminfo = null;

        /// <summary>
        /// 如果这个类需要在控制器中（通过依赖注入方式使用）
        /// 那么构造函数里面对象也需要在StartUp中ConfigureServices注入相关服务实例才行 
        /// </summary>
        /// <param name="systemInfo"></param>
        /// <param name="context"></param>
        /// <param name="mark"></param>
        public DepartmentService(IOptions<SystemInfo> systemInfo, ZYHmanageContext context)
        {
            _db = context;
            systeminfo = systemInfo?.Value;
        }
        /// <summary>
        /// 删除部门
        /// </summary>
        /// <param name="departmentGuid"></param>
        /// <returns></returns>
        public bool Delete(string departmentGuid)
        {
            var dep = _db.Department.FirstOrDefault(p => p.DepartmentGuid == departmentGuid);
            if (dep == null) ZYHHelper.ThrowException("需要删除的部门不存在");
            if ((dep.UserPosition != null && dep.UserPosition.Any()) ||
                (dep.DepartmentEmployee != null && dep.DepartmentEmployee.Any()) ||
                (dep.DepartmentRole != null && dep.DepartmentRole.Any()))
                ZYHHelper.ThrowException("部门下面有角色或员工，不允许删除该部门");
            dep.Deleted = true;
            _db.Department.Update(dep);
            return _db.SaveChanges() > 0;
        }
        /// <summary>
        /// 启用/禁用 部门
        /// </summary>
        /// <param name="departmentGuid"></param>
        /// <param name="isEnable"></param>
        /// <returns></returns>
        public bool Enable(string departmentGuid, bool isEnable)
        {
            var dep = _db.Department.FirstOrDefault(p => p.DepartmentGuid == departmentGuid);
            if (dep == null) ZYHHelper.ThrowException("需要操作的部门不存在");
            dep.Enabled = isEnable;
            _db.Department.Update(dep);
            return _db.SaveChanges() > 0;
        }
        /// <summary>
        /// 查询部门 分页
        /// </summary>
        /// <param name="pageSize"></param>
        /// <param name="pageIndex"></param>
        /// <returns></returns>
        public DataPages<Department> Query(int pageSize, int pageIndex)
        {
            if (pageSize <= 0 || pageIndex <= 0) ZYHHelper.ThrowException("查询参数错误");
            var totalCount = _db.Department.Count();
            var data = _db.Department.OrderBy(p => p.DepartmentGuid).Skip(pageIndex).Take(pageSize).Select(p => 
               new Department()
                {
                    DepartmentGuid = p.DepartmentGuid,
                    DepartmentName =p.DepartmentName,
                    Remark = p.Remark,
                    DepartmentTel = p.DepartmentTel,
                    DepartmentType=p.DepartmentType 
               }
            ).ToList();
            return new DataPages<Department>() {
                PageIndex = pageIndex,
                PageSize = pageSize,
                Data = data,
                PageTotal = totalCount
            };
        }

        /// <summary>
        /// 添加部门
        /// </summary>
        /// <param name="department"></param>
        /// <returns></returns>
        public Department Save(Department department)
        {
            department.DepartmentGuid = ZYHHelper.GetGUIDStr();
            if (_db.Department.FirstOrDefault(p => p.DepartmentName == department.DepartmentName) != null)
                ZYHHelper.ThrowException($"部门名称已经存在了");
            _db.Department.Add(department);
            _db.SaveChanges();
            return department;
        }

        /// <summary>
        /// 修改部门
        /// </summary>
        /// <param name="department"></param>
        /// <returns></returns>
        public bool Update(Department department)
        {
            var dep = _db.Department.FirstOrDefault(p => p.DepartmentGuid == department.DepartmentGuid);
            if (dep == null) ZYHHelper.ThrowException("需要修改部门不存在");
            if (_db.Department.FirstOrDefault(p => p.DepartmentName == department.DepartmentName && p.DepartmentGuid != department.DepartmentGuid) != null)
                ZYHHelper.ThrowException($"待修改部门名称已经存在了");
            dep.DepartmentName = department.DepartmentName;
            dep.DepartmentType = department.DepartmentType;
            dep.Deleted = department.Deleted;
            dep.Enabled = department.Enabled;
            dep.Remark = department.Remark;
            _db.Department.Update(dep);
            return _db.SaveChanges() > 0;
        }
    }
}
