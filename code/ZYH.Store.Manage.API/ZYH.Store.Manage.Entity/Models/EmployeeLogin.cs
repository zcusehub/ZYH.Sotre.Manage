using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class EmployeeLogin
    {
        public int EmployeeLoginId { get; set; }
        public string EmployeeGuid { get; set; }
        public string UserName { get; set; }
        public string Pwd { get; set; }
        public string Phone { get; set; }
        public int? LoginCount { get; set; }
        public DateTime? LastTime { get; set; }
        public bool? Enable { get; set; }
        public bool? Deleted { get; set; }

        public Employee EmployeeGu { get; set; }
    }
}
