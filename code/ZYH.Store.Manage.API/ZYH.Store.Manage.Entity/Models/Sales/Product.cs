using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 销售管理.日常业务.产品
    /// </summary>
    public partial class Product
    {
        public Product()
        {
            SalesProductItem = new HashSet<SalesProductItem>();
        }

        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public int? ProductType { get; set; }
        public string ProductUrl { get; set; }
        public string Remark { get; set; }
        public DateTime? CreateTime { get; set; }
        public decimal? CostPrice { get; set; }
        public decimal? SalePrice { get; set; }
        public int? MeasureUnitId { get; set; }
        public string ProductCreateUrl { get; set; }

        public ICollection<SalesProductItem> SalesProductItem { get; set; }
    }
}
