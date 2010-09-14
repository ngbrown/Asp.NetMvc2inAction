using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApplication2.Controllers
{
    using Data;

    using Models;

    public class CustomerSummariesController : Controller
    {
        private CustomerSummariesSource _customerSummaries = new CustomerSummariesSource();

        //
        // GET: /CustomerSummaries/

        public ActionResult Index()
        {
            IEnumerable<CustomerSummary> summaries = _customerSummaries.GetAll();

            return View(summaries);
        }

        //
        // POST: /CustomerSummaries/Save/

        public ViewResult Save(IEnumerable<CustomerSummary.CustomerSummaryInput> input)
        {
            return this.View(input);
        }
    }
}
