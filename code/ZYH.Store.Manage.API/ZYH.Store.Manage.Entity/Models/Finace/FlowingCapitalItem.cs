using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class FlowingCapitalItem
    {
        public int FlowingCapitalItemId { get; set; }
        public int? FlowingCapitalId { get; set; }
        public int? RecordItemType { get; set; }
        public decimal? Amount { get; set; }
        public DateTime? BeginTime { get; set; }
        public DateTime? Endtime { get; set; }
        public DateTime? RecordTime { get; set; }
        public string Remark { get; set; }

        public FlowingCapital FlowingCapital { get; set; }
    }
}
