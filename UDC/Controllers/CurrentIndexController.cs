using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UDC.Models;

namespace UDC.Controllers
{
    public class CurrentIndexController : Controller
    {
        //
        // GET: /CurrentIndex/

        public ActionResult Index()
        {
            ViewData["CurrentIndex"] = CurrentIndex.Index;
            return View();
        }

    }
}
