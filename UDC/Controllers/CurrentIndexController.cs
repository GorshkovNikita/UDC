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
            if (CurrentConfig.Index == null)
                CurrentConfig.Index = "";
            if (CurrentConfig.Index.Contains('"'))
                ViewData["CurrentIndex"] = CurrentConfig.Index.Replace("\"", "&quot;");
            else
                ViewData["CurrentIndex"] = CurrentConfig.Index;
            return View();
        }

    }
}
