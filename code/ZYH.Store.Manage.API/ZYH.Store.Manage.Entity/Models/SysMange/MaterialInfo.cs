using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 系统管理.业务数据.物料
    /// </summary>
    public partial class MaterialInfo
    {
        public int MaterialId { get; set; }
        public string MaterialCode { get; set; }
        public string MaterialName { get; set; }
        public int? MaterialType { get; set; }
        public int? MaterialTypeId { get; set; }
        public bool? Enabled { get; set; }
        public string MaterialShortName { get; set; }
        public string ShortIndexCode { get; set; }
        public string MaterialImage { get; set; }
        public DateTime? CreateTime { get; set; }

        public MaterialTypes MaterialTypeNavigation { get; set; }
    }
}
