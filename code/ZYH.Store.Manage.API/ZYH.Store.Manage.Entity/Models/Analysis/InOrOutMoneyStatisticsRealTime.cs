using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 实时统一 只有一条
    /// </summary>
    public partial class InOrOutMoneyStatisticsRealTime
    {
        public InOrOutMoneyStatisticsRealTime()
        {  
        } 
        public int ID { get; set; } = 1; 
        public decimal DateType { get; set; }
        
        public decimal? AmountIn { get; set; }
        public decimal? AmountOut { get; set; }
        public DateTime LastTime { get; set; }
        public decimal? LastAmount { get; set; } 
    }
}
