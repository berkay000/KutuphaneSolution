using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;
using Kutuphane.Models;
using Kutuphane.Models.Entity_Framework;
using System.Drawing;

namespace Kutuphane.Controllers
{
    public class AdminKitapAlimiController : Controller
    {
        // GET: AdminKitapAlimi
        LIBRARYEntities0 db = new LIBRARYEntities0();
        
        public ActionResult Index(string search, int sayfa = 1)
        {
            return View(db.Kitaplar.Where(x => x.KitapAd.Contains(search) || x.Yazarlar.YazarAd.Contains(search) || x.Turler.TurAd.Contains(search) || search == null).ToList().ToPagedList(sayfa, 5));

        }



        [HttpGet]
        public ActionResult EkleKitap()
        {

            return View();
        }


        [HttpPost]
        public ActionResult EkleKitap(KitapModel kitap)
        {
            Kitaplar kitapUpdate = db.Kitaplar.Where(x => x.KitapId == kitap.KitapId).FirstOrDefault();

            kitapUpdate.KitapAdeti = kitapUpdate.KitapAdeti+kitap.KitapAdeti;

            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}