using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class Module
    {
        public Module()
        {
            Menu = new HashSet<Menu>();
        }

        public int ModuleId { get; set; }
        public string ModuleName { get; set; }
        public string Index { get; set; }
        public bool? IsEnable { get; set; }
        public string ModuleImg { get; set; }
        public string ModuleUrl { get; set; }
        public string Remark { get; set; }

        public ICollection<Menu> Menu { get; set; }
    }
}
