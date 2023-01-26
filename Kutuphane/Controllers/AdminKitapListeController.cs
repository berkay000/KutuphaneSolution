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
    public class AdminKitapListeController : Controller
    {
        // GET: AdminKitapListe
        LIBRARYEntities0 db = new LIBRARYEntities0();
        public ActionResult Index(string search, int sayfa = 1)
        {
            return View(
                db.Kitaplar.Where(x => x.KitapAd.Contains(
                    search) || x.Yazarlar.YazarAd.Contains(search) || x.Turler.TurAd.Contains(search) || search == null
                    ).ToList().ToPagedList(sayfa, 5));


        }


        [HttpGet]
        public ActionResult YeniKitap()
        {
            List<SelectListItem> yazarListesi = (from i in db.Yazarlar.ToList()
                                                 select new SelectListItem
                                                 {
                                                     Text = i.YazarAd,
                                                     Value = i.YazarId.ToString()
                                                 }).ToList();
            ViewBag.yazar = yazarListesi;

            List<SelectListItem> turListesi = (from i in db.Turler.ToList()
                                               select new SelectListItem
                                               {
                                                   Text = i.TurAd,
                                                   Value = i.TurId.ToString()
                                               }).ToList();
            ViewBag.tur = turListesi;


            return View();
        }

        [HttpPost]
        public ActionResult YeniKitap(Kitaplar yeniKitap)
        {
            var yazar = db.Yazarlar.Where(m => m.YazarId == yeniKitap.KitapYazar).FirstOrDefault();
            yeniKitap.Yazarlar = yazar;

            var tur = db.Turler.Where(m => m.TurId == yeniKitap.KitapTur).FirstOrDefault();
            yeniKitap.Turler = tur;

            db.Kitaplar.Add(yeniKitap);
            db.SaveChanges();
            return RedirectToAction("Index");
        }


        [HttpGet]
        public ActionResult SilKitap()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SilKitap(int id)
        {
            Kitaplar kitap = db.Kitaplar.Where(x => x.KitapId == id).FirstOrDefault();
            db.Kitaplar.Remove(kitap);
            db.SaveChanges();
            TempData["Message"] = " Kitap Başarıyla Silindi.";
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult GetirKitap(int id)
        {
            List<SelectListItem> yazarListesi = (from i in db.Yazarlar.ToList()
                                                 select new SelectListItem
                                                 {
                                                     Text = i.YazarAd,
                                                     Value = i.YazarId.ToString()
                                                 }).ToList();
            ViewBag.yazar = yazarListesi;

            List<SelectListItem> turListesi = (from i in db.Turler.ToList()
                                               select new SelectListItem
                                               {
                                                   Text = i.TurAd,
                                                   Value = i.TurId.ToString()
                                               }).ToList();
            ViewBag.tur = turListesi;

            var kitap = db.Kitaplar.Find(id);
            return View("GetirKitap", kitap);
        }


        [HttpGet]
        public ActionResult GuncelleKitap()
        {
            return View();
        }

        [HttpPost]
        public ActionResult GuncelleKitap(KitapModel model)
        {
            Kitaplar kitapUpdate = db.Kitaplar.Where(x=>x.KitapId == model.KitapId).FirstOrDefault();


            var yazar = db.Yazarlar.Where(m => m.YazarId == model.KitapYazar).FirstOrDefault();
            var tur = db.Turler.Where(m => m.TurId == model.KitapTur).FirstOrDefault();

            kitapUpdate.Yazarlar = yazar;
            kitapUpdate.Turler = tur;

            kitapUpdate.KitapAd = model.KitapAd;
            kitapUpdate.SayfaSayisi = model.SayfaSayisi;
            kitapUpdate.BaskiSayisi = model.BaskiSayisi;
            kitapUpdate.KitapOzet = model.KitapOzet;
            kitapUpdate.KitapAdeti = model.KitapAdeti;
            kitapUpdate.KitapAdeti = model.KitapAdeti;
            kitapUpdate.KitapFotoUrl = model.KitapFotoUrl;
            db.SaveChanges();
            return RedirectToAction("Index");

        }


        [HttpGet]
        public ActionResult DetayKitap(int id)
        {

            var kitap = db.Kitaplar.Find(id);
            return View("DetayKitap", kitap);
        }

    }
}