using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 人力资源.组织架构.部门 员工
    /// </summary>
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
