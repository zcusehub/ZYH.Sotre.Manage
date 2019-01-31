using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Extensions.Options;
using ZYH.Common;
using ZYH.Common.Options;
using ZYH.Store.Manage.Entity.Models;
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

        public bool Delete(Department department)
        {
            throw new NotImplementedException();
        }

        public Department Save(Department department)
        {
            try
            {
                _db.Department.Add(department);
                _db.SaveChanges();

            }
            catch (Exception e)
            {
                ZYHHelper.ThrowException(e.ToString());
            }
            return department;
        }

        public bool Update(Department department)
        {
            throw new NotImplementedException();
        }
    }
}
