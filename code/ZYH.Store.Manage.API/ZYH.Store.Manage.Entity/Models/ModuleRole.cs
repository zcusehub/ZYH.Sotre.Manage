using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class ModuleRole
    {
        public ModuleRole()
        {
            MenuRole = new HashSet<MenuRole>();
        }

        public string ModuleRoleId { get; set; }
        public string DepartmentRoleGuid { get; set; }
        public int? ModuleId { get; set; }
        public bool? IsEnable { get; set; }

        public DepartmentRole DepartmentRoleGu { get; set; }
        public ICollection<MenuRole> MenuRole { get; set; }
    }
}
