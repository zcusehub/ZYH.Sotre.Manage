using System;
using System.Collections.Generic;
using System.Text; 
using ZYH.Store.Manage.Entity.Models;
using ZYH.Store.Manage.Service.Interface;

namespace ZYH.Store.Manage.Service.HR
{
    public class EmployeeService : IEmployeeService
    {
        protected ZYHmanageContext _db = null;

        public EmployeeService(ZYHmanageContext ZYHmanageContext_)
        {
            _db = ZYHmanageContext_;
        }
        public Employee Save(Employee employee)
        {
            _db.Employee.Add(employee);
            _db.SaveChanges();
            return employee;
        }
    }
}
