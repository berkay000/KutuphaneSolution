using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Kutuphane.Models.Entity_Framework;

namespace Kutuphane.Models
{
    public class TurModel
    {
        public int TurId { get; set; }
        public string TurAd { get; set; }
        public List<Turler> tur { get; set; }
    }
}