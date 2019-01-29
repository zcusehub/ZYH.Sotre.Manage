using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 人力资源.组织架构.角色模块权限
    /// </summary>
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
