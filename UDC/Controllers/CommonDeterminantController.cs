using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UDC.Models;

namespace UDC.Controllers
{
    public class CommonDeterminantController : Controller
    {
        private UDCData data = new UDCData();

        //
        // GET: /CommonDeteriminant/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Language()
        {
            return View();
        }

        public ActionResult Nation()
        {
            return View();
        }

        public ActionResult FormDocument()
        {
            return View();
        }

        public ActionResult Place()
        {
            return View();
        }

        public ActionResult Time()
        {
            return View();
        }
    }
}
