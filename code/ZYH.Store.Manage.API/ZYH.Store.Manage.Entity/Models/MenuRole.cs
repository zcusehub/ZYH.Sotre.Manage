using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
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
