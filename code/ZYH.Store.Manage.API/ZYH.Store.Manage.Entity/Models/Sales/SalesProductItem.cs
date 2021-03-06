﻿using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 销售管理.日常业务.产品销售明细
    /// </summary>
    public partial class SalesProductItem
    {
        public int SalesProductItemId { get; set; }
        public int? SalesProductId { get; set; }
        public int? ProductId { get; set; }
        public decimal? SaleCount { get; set; }
        public int? MeasureUnitId { get; set; }
        public decimal? Amount { get; set; }
        public decimal? DiscountAmount { get; set; }
        public decimal? Discount { get; set; }

        public MeasureUnit MeasureUnit { get; set; }
        public Product Product { get; set; }
        public SalesProduct SalesProduct { get; set; }
    }
}
