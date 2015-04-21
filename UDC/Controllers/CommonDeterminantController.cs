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
            ViewData["CurrentIndex"] = CurrentIndex.Index;
            return View();
        }

        public ActionResult Language()
        {
            ViewData["CurrentIndex"] = CurrentIndex.Index;
            return View(UDCData.LanguageDeterminantIndexes);
        }

        public ActionResult Nation()
        {
            ViewData["CurrentIndex"] = CurrentIndex.Index;
            return View(UDCData.NationDeterminantIndexes);
        }

        public ActionResult FormDocument()
        {
            ViewData["CurrentIndex"] = CurrentIndex.Index;
            return View(UDCData.FormDeterminantIndexes);
        }

        public ActionResult Place()
        {
            ViewData["CurrentIndex"] = CurrentIndex.Index;
            return View(UDCData.PlaceDeterminantIndexes);
        }

        public ActionResult Time()
        {
            ViewData["CurrentIndex"] = CurrentIndex.Index;
            return View(UDCData.TimeDeterminantIndexes);
        }
    }
}
