using System;
using System.Collections.Generic;

namespace ZYH.Store.Manage.Entity.Models
{
    /// <summary>
    /// 系统管理.业务数据.物料分类
    /// </summary>
    public partial class MaterialTypes
    {
        public MaterialTypes()
        {
            MaterialInfo = new HashSet<MaterialInfo>();
        }

        public int MaterialTypeId { get; set; }
        public int? ParentMaterialTypeId { get; set; }
        public string MaterialTypeName { get; set; }
        public string Remark { get; set; }
        public bool? Enabled { get; set; }
        public bool Deleted { get; set; }

        public ICollection<MaterialInfo> MaterialInfo { get; set; }
    }
}
