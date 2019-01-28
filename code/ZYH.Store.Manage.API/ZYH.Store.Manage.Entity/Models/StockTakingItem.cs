using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class StockTakingItem
    {
        public int StockTakingItemId { get; set; }
        public int StockTakingId { get; set; }
        public int MaterialId { get; set; }
        public decimal MaterialPackageId { get; set; }
        public string Remark { get; set; }
        public decimal? Inventory { get; set; }
        public decimal? OldInventory { get; set; }

        public StockTaking StockTaking { get; set; }
    }
}
