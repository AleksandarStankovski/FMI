//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AspProject
{
    using System;
    using System.Collections.Generic;
    
    public partial class boxing_gloves
    {
        public int boxing_gloves_id { get; set; }
        public string available_in_shop { get; set; }
        public string boxing_gloves_model { get; set; }
        public Nullable<decimal> boxing_gloves_price { get; set; }
        public string currency { get; set; }
        public string boxing_gloves_size { get; set; }
        public Nullable<int> boxing_gloves_rating { get; set; }
        public string boxing_gloves_material { get; set; }
        public string origin { get; set; }
    
        public virtual shop_info shop_info { get; set; }
    }
}