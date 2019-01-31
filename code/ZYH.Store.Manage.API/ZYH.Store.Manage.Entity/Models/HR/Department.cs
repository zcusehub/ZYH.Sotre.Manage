using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 人力资源.组织架构.部门
    /// </summary>
    public partial class Department
    {
        public Department()
        {
            DepartmentEmployee = new HashSet<DepartmentEmployee>();
            UserPosition = new HashSet<UserPosition>();
            DepartmentRole = new HashSet<DepartmentRole>();
        }

        public string DepartmentGuid { get; set; }
        public string DepartmentName { get; set; }
        public string ParentDepartmentGuid { get; set; }
        public byte? DepartmentType { get; set; }
        public bool? Deleted { get; set; }
        public int DepartmentCode { get; set; }
        public string DepartmentTel { get; set; }
        public string Remark { get; set; }
        public bool? Enabled { get; set; }

        public ICollection<DepartmentEmployee> DepartmentEmployee { get; set; }
        public ICollection<UserPosition> UserPosition { get; set; }

        public ICollection<DepartmentRole> DepartmentRole { get; set; }
    }
}
