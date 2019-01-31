using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class InOrOutMoneyStatistics
    {
        public InOrOutMoneyStatistics()
        {  
        } 
        public int InOrOutMoneyStatisticsId { get; set; }
        public string Date { get; set; }
        public int DateType { get; set; }
        public decimal? AmountIn { get; set; }
        public decimal? AmountOut { get; set; } 
        
    }
}
