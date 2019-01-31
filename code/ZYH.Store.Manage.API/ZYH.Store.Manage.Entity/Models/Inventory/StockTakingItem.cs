using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 库存管理.业务数据.盘点明细
    /// </summary>
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
