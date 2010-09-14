using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApplication1.Controllers
{
    using Models;

    public class GuestBookController : Controller
    {
        //
        // GET: /GuestBook/

        public ActionResult Index()
        {
            var model = new GuestBookEntry();
            return View(model);
        }

        //
        // POST: /GuestBook/

        [HttpPost]
        public ActionResult Index(GuestBookEntry entry)
        {
            TempData["entry"] = entry;
            return RedirectToAction("ThankYou");
        }

        public ActionResult ThankYou()
        {
            // do something with the values, such as send an email

            if (TempData["entry"] == null)
            {
                return RedirectToAction("index");
            }

            var model = (GuestBookEntry)TempData["entry"];

            return this.View(model);
        }
    }
}
