using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class InOrOutMoneyStatistics
    {
        public InOrOutMoneyStatistics()
        {
            InOrOutMoneyStatisticsItem = new HashSet<InOrOutMoneyStatisticsItem>();
        }

        public int InOrOutMoneyStatisticsId { get; set; }
        public DateTime? Date { get; set; }
        public decimal? AmountIn { get; set; }
        public decimal? AmountOut { get; set; }

        public ICollection<InOrOutMoneyStatisticsItem> InOrOutMoneyStatisticsItem { get; set; }
    }
}
