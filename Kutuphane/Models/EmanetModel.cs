using Kutuphane.Models.Entity_Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kutuphane.Models
{
    public class EmanetModel
    {
        public int EmanetId { get; set; }
        public int EmanetKullaniciId { get; set; }
        public int EmanetKitapId { get; set; }
        public DateTime AlinanTarih { get; set; }
        public DateTime TeslimTarihi { get; set; }
        public int Durumu { get; set; }
        public List<Emanetler> tur { get; set; }
    }
}