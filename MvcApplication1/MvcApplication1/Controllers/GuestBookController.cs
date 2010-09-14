using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApplication1.Controllers
{
    public class GuestBookController : Controller
    {
        //
        // GET: /GuestBook/

        public ActionResult Index()
        {
            return View();
        }

        //
        // URL: /GuestBook/Sign

        public ActionResult Sign(string name, string email, string comments)
        {
            // do something with the values, such as send an email

            ViewData["name"] = name;
            ViewData["email"] = email;
            ViewData["comments"] = comments;

            return this.View("ThankYou");
        }
    }
}
