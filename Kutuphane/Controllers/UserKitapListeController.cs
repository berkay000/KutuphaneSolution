using Kutuphane.Models.Entity_Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Kutuphane.Controllers
{
    public class UserKitapListeController : Controller
    {
        LIBRARYEntities0 db = new LIBRARYEntities0();
        // GET: UserKitapListe

        public class BookClass
        {
            public Kitaplar Kitapc { get; set; }
            public IEnumerable<Kitaplar> Kitaplars { get; set; }
            public IEnumerable<Turler> Turlers { get; set; }
            public IEnumerable<Yazarlar> Yazarlars { get; set; }
            public List<SelectListItem> Types { get; set; }

            public List<SelectListItem> Types2 { get; set; }
            public int userId { get; set; }

            public String yazarfiltre { get; set; }

            public String turfiltre { get; set; }
        }

        public ActionResult Index(BookClass bookClasspar)
        {

            //var userName = User.Identity.Name;
            //var userdb = db.Kullanicilar.FirstOrDefault(x => x.KullaniciAd == userName);
            //var userId = db.Kullanicilar.Where(x => x.KullaniciId == userdb.KullaniciId).ToList();

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

            BookClass bookClass = new BookClass();
            bookClass.Kitaplars = db.Kitaplar.ToList();
            bookClass.Turlers= db.Turler.ToList();
            bookClass.Yazarlars = db.Yazarlar.ToList();
            //string types = ViewBag.yazar;
            //String[] types = ViewBag.yazar.Split(",");
            //bookClass.Types = types;
            bookClass.Types = ViewBag.yazar;
            bookClass.Types2 = ViewBag.tur;

            //bookClass.userId = userId[0].KullaniciId;
            if (bookClasspar.yazarfiltre!=null||bookClasspar.turfiltre!=null) {
                foreach(var x in bookClass.Kitaplars) 
                {
                    var gettur = db.Turler.Find(x.KitapTur);
                    String tur = gettur.TurAd;
                    if (bookClasspar.turfiltre != tur)
                    {
                        x.KitapAd = null;
                    }
            }

                foreach (var x in bookClass.Kitaplars)
                {
                    var getyazar = db.Yazarlar.Find(x.KitapYazar);
                    String yazar = getyazar.YazarAd;
                    if (bookClasspar.yazarfiltre != yazar)
                    {
                        x.KitapAd = null;
                    }
                }
            }

            return View(bookClass);
        }


        [HttpGet]
        public ActionResult KitapInfo(int id)
        {
            var info = db.Kitaplar.Find(id);
            return View(info);
        }

    }
}