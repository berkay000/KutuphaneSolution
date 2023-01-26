using Kutuphane.Models.Entity_Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Kutuphane.Models;

namespace Kutuphane.Controllers
{
    public class AdminTurListeController : Controller
    {
        // GET: AdminTurListe
        LIBRARYEntities0 db = new LIBRARYEntities0();

        public ActionResult Index(string search)
        {
            return View(db.Turler.Where(x => x.TurAd.Contains(search) || search == null).ToList());
        }


        [HttpGet]
        public ActionResult YeniTur()
        {
            return View();
        }

        [HttpPost]
        public ActionResult YeniTur(Turler yeniTur)
        {
            db.Turler.Add(yeniTur);
            db.SaveChanges();
            return RedirectToAction("Index");
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SilTur(int id)
        {

            Turler kulup = db.Turler.Where(x => x.TurId == id).FirstOrDefault();
            db.Turler.Remove(kulup);
            db.SaveChanges();
            TempData["Message"] = " Tür Başarıyla Silindi.";
            return RedirectToAction("Index");
        }


        [HttpGet]
        public ActionResult GetirTur()
        {

            return View();
        }

        [HttpPost]
        public ActionResult GetirTur(int id)
        {
            var turName = db.Turler.Find(id);
            return View("GetirTur", turName);
        }


        [HttpGet]
        public ActionResult GuncelleTur()
        {
            return View();
        }

        [HttpPost]
        public ActionResult GuncelleTur(TurModel model)
        {

            Turler turUpdate = db.Turler.Where(x => x.TurId == model.TurId).FirstOrDefault();
            turUpdate.TurAd = model.TurAd;
            db.SaveChanges();
            TempData["Message"] = " Tür Başarıyla Güncellendi.";

            return RedirectToAction("Index");

        }

    }
}