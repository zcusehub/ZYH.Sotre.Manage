using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 仓库库存
    /// </summary>
    public partial class WarehouseInventory
    {
        public int WarehouseInventoryId { get; set; }
        public int? WarehouseRegionId { get; set; }
        public float NewestPrice { get; set; }
        public int MaterialId { get; set; }
        public int? MaterialPackageId { get; set; }
        public decimal Inventory { get; set; }
        public float Cost { get; set; }

        public WarehouseRegion WarehouseRegion { get; set; }
    }
}
