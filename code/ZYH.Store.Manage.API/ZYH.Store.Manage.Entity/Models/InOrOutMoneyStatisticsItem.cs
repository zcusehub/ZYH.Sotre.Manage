using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class InOrOutMoneyStatisticsItem
    {
        public int InOrOutMoneyStatisticsItemId { get; set; }
        public int? InOrOutMoneyStatisticsId { get; set; }
        public DateTime? SourceId { get; set; }
        public decimal? Amount { get; set; }
        public int? RecordType { get; set; }
        public int? FlowingCapitalType { get; set; }

        public InOrOutMoneyStatistics InOrOutMoneyStatistics { get; set; }
    }
}
