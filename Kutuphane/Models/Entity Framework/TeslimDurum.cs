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
    
    public partial class TeslimDurum
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TeslimDurum()
        {
            this.Emanetler = new HashSet<Emanetler>();
        }
    
        public int DurumId { get; set; }
        public string DurumIsım { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Emanetler> Emanetler { get; set; }
    }
}
