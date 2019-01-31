using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 系统管理.业务数据.计量单位
    /// </summary>
    public partial class MeasureUnit
    {
        public MeasureUnit()
        {
            MaterialPackage = new HashSet<MaterialPackage>();
            SalesProductItem = new HashSet<SalesProductItem>();
        }

        public int MeasureUnitId { get; set; }
        public string MeasureUnitName { get; set; }
        public bool? Enable { get; set; }

        public ICollection<MaterialPackage> MaterialPackage { get; set; }
        public ICollection<SalesProductItem> SalesProductItem { get; set; }
    }
}
