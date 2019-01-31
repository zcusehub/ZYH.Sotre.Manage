using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 系统管理.业务数据.供应商
    /// </summary>
    public partial class Supplier
    {
        public Supplier()
        {
            PurchaseItems = new HashSet<PurchaseItems>();
        }

        public int SupplierId { get; set; }
        public string SupplierName { get; set; }
        public string ContactName { get; set; }
        public string Contact { get; set; }
        public int? SupplierType { get; set; }
        public string Address { get; set; }
        public string Remark { get; set; }

        public ICollection<PurchaseItems> PurchaseItems { get; set; }
    }
}
