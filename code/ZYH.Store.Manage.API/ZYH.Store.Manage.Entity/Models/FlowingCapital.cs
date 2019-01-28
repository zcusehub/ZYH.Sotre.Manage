using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class FlowingCapital
    {
        public FlowingCapital()
        {
            FlowingCapitalItem = new HashSet<FlowingCapitalItem>();
        }

        public int FlowingCapitalId { get; set; }
        public string FlowingCapitalName { get; set; }
        public int? FlowingCapitalType { get; set; }
        public int? RecordType { get; set; }
        public int? ApplyUserId { get; set; }
        public DateTime? RecordTime { get; set; }
        public decimal? Amount { get; set; }
        public string Remark { get; set; }
        public int? SourceId { get; set; }

        public ICollection<FlowingCapitalItem> FlowingCapitalItem { get; set; }
    }
}
