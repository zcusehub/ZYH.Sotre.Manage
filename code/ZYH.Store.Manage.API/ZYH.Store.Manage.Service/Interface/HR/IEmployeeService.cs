using System;
using System.Collections.Generic;
using System.Text;
using ZYH.Store.Manage.Entity.Models;

namespace ZYH.Store.Manage.Service.Interface
{
    public interface IEmployeeService: IBaseBussiness
    {
        /// <summary>
        /// 员工保存
        /// </summary>
        /// <param name="employee"></param>
        /// <returns></returns>
        Employee Save(Employee employee);
    }
}
