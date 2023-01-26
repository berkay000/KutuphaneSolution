using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Kutuphane.Models.Entity_Framework;

namespace Kutuphane.Controllers
{
    public class GirisSayfasiController : Controller
    {
        // GET: GirisSayfasi
        LIBRARYEntities0 db = new LIBRARYEntities0();



        public ActionResult Logout()
        {

            FormsAuthentication.SignOut();
            return RedirectToAction("GirisSayfasiView", "GirisSayfasi");
        }
        [HttpGet]
        public ActionResult GirisSayfasiView()
        {
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult GirisSayfasiView(Kullanicilar kullanici)
        {

            var checkLogin = db.Kullanicilar.Where(x => x.KullaniciAd.Equals(kullanici.KullaniciAd) && x.KullaniciSifre.Equals(kullanici.KullaniciSifre)).FirstOrDefault();


            if (checkLogin != null)
            {
                Session["USERTCSS"] = kullanici.KullaniciAd.ToString();

                return RedirectToAction("Index", "UserKitapListe");

            }
            else
            {
                ViewBag.Notification = "Yanlış kullanıcı adı veya şifre";
            }
            return View();



        }

    }
}
