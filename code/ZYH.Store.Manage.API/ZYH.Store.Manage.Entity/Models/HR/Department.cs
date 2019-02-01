using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

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

        [Required(ErrorMessage = "部门名称不能为空")]
        public string DepartmentName { get; set; }
        public string ParentDepartmentGuid { get; set; }
        [RegularExpression("[1,2]", ErrorMessage = "部门类型错误")]
        public byte? DepartmentType { get; set; }
        public bool? Deleted { get; set; } = false;
        public int DepartmentCode { get; set; }
        [Required(AllowEmptyStrings = true)]
        [RegularExpression(@"(\(\d{3,4}\)|\d{3,4}-|\s)?\d{7,14}", ErrorMessage = "部门电话输入错误")]
        public string DepartmentTel { get; set; }
        public string Remark { get; set; }
        public bool? Enabled { get; set; } = true;
        public ICollection<DepartmentEmployee> DepartmentEmployee { get; set; }
        public ICollection<UserPosition> UserPosition { get; set; }

        public ICollection<DepartmentRole> DepartmentRole { get; set; }
    }
     
}
