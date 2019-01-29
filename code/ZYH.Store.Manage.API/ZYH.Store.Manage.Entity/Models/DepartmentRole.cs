using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    ///人力资源.组织架构.部门 角色
    /// </summary>
    public partial class DepartmentRole
    {
        public DepartmentRole()
        {
            ModuleRole = new HashSet<ModuleRole>();
        }

        public string DepartmentRoleGuid { get; set; }
        public string DepartmentGuid { get; set; }
        public string RoleGuid { get; set; }
        public string RoleName { get; set; }
        public bool? Enabled { get; set; }

        public ICollection<ModuleRole> ModuleRole { get; set; }
    }
}
