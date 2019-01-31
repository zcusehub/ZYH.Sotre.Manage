using System;
using System.Collections.Generic;
using System.Text;
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
        /// <param name="department"></param>
        /// <returns></returns>
        bool Delete(Department department);
    }
}
