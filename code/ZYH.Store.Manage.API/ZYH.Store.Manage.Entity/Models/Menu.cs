﻿using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class Menu
    {
        public int MenuId { get; set; }
        public string MenuName { get; set; }
        public string Index { get; set; }
        public bool? IsEnable { get; set; }
        public string MenuImg { get; set; }
        public string MenuUrl { get; set; }
        public string Remark { get; set; }
        public int? MenuParentId { get; set; }
        public int? ModuleId { get; set; }

        public Module Module { get; set; }
    }
}
