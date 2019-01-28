using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class PurchaseItems
    {
        public int PurchaseItemId { get; set; }
        public int? PurchaseId { get; set; }
        public string Remark { get; set; }
        public decimal? Price { get; set; }
        public decimal? Count { get; set; }
        public decimal? TotalPrice { get; set; }
        public int? MaterialPackageId { get; set; }
        public int? SupplierId { get; set; }
        public int? MaterialId { get; set; }

        public MaterialPackage MaterialPackage { get; set; }
        public Purchase Purchase { get; set; }
        public Supplier Supplier { get; set; }
    }
}
