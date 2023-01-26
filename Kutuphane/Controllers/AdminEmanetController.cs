using System;
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
    public class AdminEmanetController : Controller
    {
        // GET: AdminEmanet
        LIBRARYEntities0 db = new LIBRARYEntities0();

        public ActionResult Index(string search, int sayfa = 1)
        {
            List<SelectListItem> durumListesi = (from i in db.TeslimDurum.ToList()
                                                 select new SelectListItem
                                                 {
                                                     Text = i.DurumIsım,
                                                     Value = i.DurumId.ToString()
                                                 }).ToList();
            ViewBag.durum = durumListesi;

            return View(db.Emanetler.Where(x => x.Kitaplar.KitapAd.Contains(search) || x.Kullanicilar.Ad.Contains(search) || x.Kullanicilar.Soyad.Contains(search) || search == null).ToList().ToPagedList(sayfa, 5));
 
        }



        [HttpPost]
        public ActionResult TeslimEmanet(int id)
        {
            db.SaveChanges();
            return View();
        }

        [HttpPost]
        public ActionResult SureUzat(EmanetModel model)
        {

            Emanetler sureUzat = db.Emanetler.Where(x => x.EmanetId == model.EmanetId).FirstOrDefault();
            sureUzat.TeslimTarihi = model.TeslimTarihi;
            db.SaveChanges();
            TempData["Message"] = " Teslim Süresi Başarıyla Güncellendi.";

            return RedirectToAction("Index");
        }




    }
}