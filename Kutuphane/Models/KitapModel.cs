using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Kutuphane.Models.Entity_Framework;

namespace Kutuphane.Models
{
    public class KitapModel
    {
        public int KitapId { get; set; }
        public string KitapAd { get; set; }
        public int KitapYazar { get; set; }
        public int KitapTur { get; set; }
        public int SayfaSayisi { get; set; }
        public int BaskiSayisi { get; set; }
        public string KitapOzet { get; set; }
        public int KitapAdeti { get; set; }
        public string KitapFotoUrl { get; set; }
        public List<Kitaplar> kitap { get; set; }
    }
}