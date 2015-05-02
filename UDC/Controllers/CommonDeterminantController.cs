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
            if (CurrentConfig.Index == null)
                CurrentConfig.Index = "";
            if (CurrentConfig.Index.Contains('"'))
                ViewData["CurrentIndex"] = CurrentConfig.Index.Replace("\"", "&quot;");
            else
                ViewData["CurrentIndex"] = CurrentConfig.Index;
            return View();
        }

        public ActionResult Language()
        {
            if (CurrentConfig.Index == null)
                CurrentConfig.Index = "";
            if (CurrentConfig.Index.Contains('"'))
                ViewData["CurrentIndex"] = CurrentConfig.Index.Replace("\"", "&quot;");
            else
                ViewData["CurrentIndex"] = CurrentConfig.Index;
            return View(UDCData.LanguageDeterminantIndexes);
        }

        public ActionResult Nation()
        {
            if (CurrentConfig.Index == null)
                CurrentConfig.Index = "";
            if (CurrentConfig.Index.Contains('"'))
                ViewData["CurrentIndex"] = CurrentConfig.Index.Replace("\"", "&quot;");
            else
                ViewData["CurrentIndex"] = CurrentConfig.Index;
            return View(UDCData.NationDeterminantIndexes);
        }

        public ActionResult FormDocument()
        {
            if (CurrentConfig.Index == null)
                CurrentConfig.Index = "";
            if (CurrentConfig.Index.Contains('"'))
                ViewData["CurrentIndex"] = CurrentConfig.Index.Replace("\"", "&quot;");
            else
                ViewData["CurrentIndex"] = CurrentConfig.Index;
            return View(UDCData.FormDeterminantIndexes);
        }

        public ActionResult Place()
        {
            if (CurrentConfig.Index == null)
                CurrentConfig.Index = "";
            if (CurrentConfig.Index.Contains('"'))
                ViewData["CurrentIndex"] = CurrentConfig.Index.Replace("\"", "&quot;");
            else
                ViewData["CurrentIndex"] = CurrentConfig.Index;
            return View(UDCData.PlaceDeterminantIndexes);
        }

        public ActionResult Time()
        {
            if (CurrentConfig.Index == null)
                CurrentConfig.Index = "";
            if (CurrentConfig.Index.Contains('"'))
                ViewData["CurrentIndex"] = CurrentConfig.Index.Replace("\"", "&quot;");
            else
                ViewData["CurrentIndex"] = CurrentConfig.Index;
            return View(UDCData.TimeDeterminantIndexes);
        }

        public ActionResult Property()
        {
            if (CurrentConfig.Index == null)
                CurrentConfig.Index = "";
            if (CurrentConfig.Index.Contains('"'))
                ViewData["CurrentIndex"] = CurrentConfig.Index.Replace("\"", "&quot;");
            else
                ViewData["CurrentIndex"] = CurrentConfig.Index;
            return View(UDCData.PropertyDeterminantIndexes);
        }
    }
}
