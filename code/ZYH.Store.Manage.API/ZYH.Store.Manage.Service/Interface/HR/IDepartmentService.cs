using System;
using System.Collections.Generic;
using System.Text;
using ZYH.Store.Manage.Entity.Extend;
using ZYH.Store.Manage.Entity.Models;

namespace ZYH.Store.Manage.Service.Interface
{
    /// <summary>
    /// 部门编辑服务
    /// </summary>
    public interface IDepartmentService: IBaseBussiness
    {
        /// <summary>
        /// 添加部门
        /// </summary>
        /// <param name="department"></param>
        /// <returns></returns>
        Department Save(Department department);
        /// <summary>
        /// 修改部门
        /// </summary>
        /// <param name="department"></param>
        /// <returns></returns>
        bool Update(Department department);
        /// <summary>
        /// 删除部门
        /// </summary>
        /// <param name="departmentGuid"></param>
        /// <returns></returns>
        bool Delete(string departmentGuid);

        /// <summary>
        /// 启用/禁用
        /// </summary>
        /// <param name="departmentGuid"></param>
        /// <param name="isEnable"></param>
        /// <returns></returns>
        bool Enable(string departmentGuid, bool isEnable);

        /// <summary>
        /// 部门分页 查询
        /// </summary>
        /// <param name="pageSize"></param>
        /// <param name="pageIndex"></param>
        /// <returns></returns>
        DataPages<Department> Query(int pageSize, int pageIndex);
    }
}
