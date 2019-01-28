using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class StockTaking
    {
        public StockTaking()
        {
            StockTakingItem = new HashSet<StockTakingItem>();
        }

        public int StockTakingId { get; set; }
        public DateTime? CreateTime { get; set; }
        public int EmployeeGuid { get; set; }
        public decimal Status { get; set; }
        public float WarehouseId { get; set; }
        public DateTime ApplyTime { get; set; }
        public string Remark { get; set; }

        public ICollection<StockTakingItem> StockTakingItem { get; set; }
    }
}
