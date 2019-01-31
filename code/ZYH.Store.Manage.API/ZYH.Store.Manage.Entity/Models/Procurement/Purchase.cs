using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 采购管理.日常业务.需求采购
    /// </summary>
    public partial class Purchase
    {
        public Purchase()
        {
            PurchaseItems = new HashSet<PurchaseItems>();
        }

        public int PurchaseId { get; set; }
        public string Address { get; set; }
        public decimal? CostPrice { get; set; }
        public decimal? RealPrice { get; set; }
        public string EmployeeGuid { get; set; }
        public string Contact { get; set; }
        public decimal? RoadPrice { get; set; }
        public string Remark { get; set; }
        public DateTime? RecordTime { get; set; }
        public int? Status { get; set; }
        public DateTime? CreateTime { get; set; }
        public DateTime? ApplyTime { get; set; }
        public DateTime? PlanTime { get; set; }

        public ICollection<PurchaseItems> PurchaseItems { get; set; }
    }
}
