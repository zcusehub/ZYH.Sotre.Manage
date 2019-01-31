using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 人力资源.组织架构.角色模块菜单权限
    /// </summary>
    public partial class MenuRole
    {
        public string MenuRoleId { get; set; }
        public string ModuleRoleId { get; set; }
        public int? ModuleId { get; set; }
        public int MenuID { get; set; }
        public int? MenuParentId { get; set; }
        public int? Authority { get; set; }

        public ModuleRole ModuleRole { get; set; }
    }
}
