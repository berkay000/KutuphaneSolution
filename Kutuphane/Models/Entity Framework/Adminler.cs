//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Kutuphane.Models.Entity_Framework
{
    using System;
    using System.Collections.Generic;
    
    public partial class Adminler
    {
        public int AdminId { get; set; }
        public string AdminKullaniciId { get; set; }
        public string AdminSifre { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public Nullable<int> YeniAdminEklemeYetkisi { get; set; }
    }
}
