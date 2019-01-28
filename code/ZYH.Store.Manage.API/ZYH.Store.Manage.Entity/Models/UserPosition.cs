using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class UserPosition
    {
        public int PositionId { get; set; }
        public string DepartmentGuid { get; set; }
        public string PositionName { get; set; }
        public string IndexCode { get; set; }
        public int ParentPositionId { get; set; }
        public byte IsDirector { get; set; }
        public string Memo { get; set; }
        public bool Enabled { get; set; }
        public bool Deleted { get; set; }

        public Department DepartmentGu { get; set; }
    }
}
