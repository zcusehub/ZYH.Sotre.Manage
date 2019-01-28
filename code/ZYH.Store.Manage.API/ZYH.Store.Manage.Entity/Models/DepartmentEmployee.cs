using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class DepartmentEmployee
    {
        public string DepartmentEmployeeId { get; set; }
        public string DepartmentGuid { get; set; }
        public string DepartmentRoleGuid { get; set; }
        public string RoleGuid { get; set; }
        public string EmployeeGuid { get; set; }
        public bool? Enabled { get; set; }

        public Department DepartmentGu { get; set; }
    }
}
