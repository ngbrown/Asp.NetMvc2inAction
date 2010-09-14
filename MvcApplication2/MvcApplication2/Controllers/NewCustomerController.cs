using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApplication3.Controllers
{
    using Models;

    public class NewCustomerController : Controller
    {
        //
        // GET: /NewCustomer/

        public ActionResult Index()
        {
            return View();
        }

        public ViewResult Save(NewCustomerInput input)
        {
            return this.View(input);
        }

    }
}
