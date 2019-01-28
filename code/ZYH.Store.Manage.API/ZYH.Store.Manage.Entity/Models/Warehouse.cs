using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class Warehouse
    {
        public int WarehouseId { get; set; }
        public string WarehouseCode { get; set; }
        public int WarehouseTypeId { get; set; }
        public string WarehouseName { get; set; }
        public string IndexCode { get; set; }
        public int DistrictId { get; set; }
        public string Address { get; set; }
        public string DepartmentGuid { get; set; }
        public string Remark { get; set; }
        public bool? Enabled { get; set; }
        public bool Deleted { get; set; }
        public bool Locked { get; set; }
    }
}
