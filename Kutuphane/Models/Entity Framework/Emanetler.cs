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
    
    public partial class Emanetler
    {
        public int EmanetId { get; set; }
        public Nullable<int> EmanetKullaniciId { get; set; }
        public Nullable<int> EmanetKitapId { get; set; }
        public Nullable<System.DateTime> AlinanTarih { get; set; }
        public Nullable<System.DateTime> TeslimTarihi { get; set; }
        public Nullable<int> Durumu { get; set; }
    
        public virtual Kitaplar Kitaplar { get; set; }
        public virtual Kullanicilar Kullanicilar { get; set; }
        public virtual TeslimDurum TeslimDurum { get; set; }
    }
}
