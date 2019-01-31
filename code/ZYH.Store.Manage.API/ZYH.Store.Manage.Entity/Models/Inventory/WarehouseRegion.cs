using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 仓库区域
    /// </summary>
    public partial class WarehouseRegion
    {
        public WarehouseRegion()
        {
            WarehouseInventory = new HashSet<WarehouseInventory>();
        }

        public int WarehouseRegionId { get; set; }
        public int WarehouseId { get; set; }
        public int RegionName { get; set; }
        public bool Deleted { get; set; }
        public string Remark { get; set; }

        public ICollection<WarehouseInventory> WarehouseInventory { get; set; }
    }
}
