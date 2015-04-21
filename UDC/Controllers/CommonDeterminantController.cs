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
        //
        // GET: /CommonDeteriminant/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Language()
        {
            return View(UDCData.LanguageDeterminantIndexes);
        }

        public ActionResult Nation()
        {
            return View(UDCData.NationDeterminantIndexes);
        }

        public ActionResult FormDocument()
        {
            return View(UDCData.FormDeterminantIndexes);
        }

        public ActionResult Place()
        {
            return View(UDCData.PlaceDeterminantIndexes);
        }

        public ActionResult Time()
        {
            return View(UDCData.TimeDeterminantIndexes);
        }
    }
}
