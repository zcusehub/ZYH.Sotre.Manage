using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    public partial class MaterialPackage
    {
        public MaterialPackage()
        {
            PurchaseItems = new HashSet<PurchaseItems>();
        }

        public int MaterialPackageId { get; set; }
        public int MaterialId { get; set; }
        public string MaterialPackageName { get; set; }
        public string Remark { get; set; }
        public double Ratio { get; set; }
        public int MeasureUnitId { get; set; }
        public string BarCode { get; set; }
        public decimal CostPrice { get; set; }
        public decimal SalePrice { get; set; }
        public bool? Enabled { get; set; }

        public MeasureUnit MeasureUnit { get; set; }
        public ICollection<PurchaseItems> PurchaseItems { get; set; }
    }
}
