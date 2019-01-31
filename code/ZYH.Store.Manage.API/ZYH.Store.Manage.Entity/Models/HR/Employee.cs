using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 人力资源.人事管理.员工
    /// </summary>
    public partial class Employee
    {
        public Employee()
        {
            EmployeeLogin = new HashSet<EmployeeLogin>();
        }

        public string EmployeeGuid { get; set; }
        public string EmployeeName { get; set; }
        public string IndexCode { get; set; }
        public string EmployeeCode { get; set; }
        public DateTime? Birthday { get; set; }
        public byte? Gender { get; set; }
        public string Address { get; set; }
        public string IdcardNo { get; set; }
        public DateTime? InductionDate { get; set; }
        public DateTime? FormalDate { get; set; }
        public DateTime? LeaveDate { get; set; }
        public byte? Status { get; set; }
        public int? DutyId { get; set; }
        public int? PositionId { get; set; }
        public string Tel { get; set; }

        public ICollection<EmployeeLogin> EmployeeLogin { get; set; }
    }
}
