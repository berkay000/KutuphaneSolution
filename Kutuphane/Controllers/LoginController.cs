using Kutuphane.Models.Entity_Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace Kutuphane.Controllers
{
    public class LoginController : Controller
    {
        LIBRARYEntities0 db = new LIBRARYEntities0();
        // GET: Login
        [AllowAnonymous]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(Kullanicilar US)
        {
            var checkLogin = db.Kullanicilar.Where(x => x.KullaniciAd.Equals(US.KullaniciAd) 
            && x.KullaniciSifre.Equals(US.KullaniciSifre)).FirstOrDefault();

            if (checkLogin != null)
            {
                Session["USERTCSS"] = US.KullaniciAd.ToString();
                FormsAuthentication.SetAuthCookie(US.KullaniciAd, false);
                    return RedirectToAction("Index", "Home"); 
            }
            else
            {
                ViewBag.Notification = "Yanlış kullanıcı adı veya şifre";
            }
            return View();
        }
        [HttpGet]
        public ActionResult AdminLogin()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AdminLogin(Adminler adminler)
        {
            var checkLogin = db.Adminler.Where(x => x.AdminKullaniciId.Equals(adminler.AdminKullaniciId) 
            && x.AdminSifre.Equals(adminler.AdminSifre)).FirstOrDefault();

            if (checkLogin != null)
            {
                Session["USERTCSS"] = adminler.AdminKullaniciId.ToString();
                FormsAuthentication.SetAuthCookie(adminler.AdminKullaniciId, false);

                return RedirectToAction("Index", "AdminKitapListe");
            }
            else
            {
                ViewBag.Notification = "Yanlış kullanıcı adı veya şifre";
            }
            return View();



        }


    }
}
