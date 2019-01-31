using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 销售管理.日常业务.产品销售
    /// </summary>
    public partial class SalesProduct
    {
        public SalesProduct()
        {
            SalesProductItem = new HashSet<SalesProductItem>();
        }

        public int SalesProductId { get; set; }
        public string SalesProductCode { get; set; }
        public DateTime? SaleTime { get; set; }
        public int? PersonCount { get; set; }
        public decimal? Amount { get; set; }
        public decimal? Discount { get; set; }
        public decimal? DiscountAmount { get; set; }
        public string ConsumerCode { get; set; }

        public ICollection<SalesProductItem> SalesProductItem { get; set; }
    }
}
