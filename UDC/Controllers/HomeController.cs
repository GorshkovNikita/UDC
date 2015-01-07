using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UDC.Models;

namespace UDC.Controllers
{

    public class HomeController : Controller
    {
        public CurrentIndexLtSDataContext _db = new CurrentIndexLtSDataContext();

        public ActionResult Index()
        {
            return View(_db.CurrentIndex.ToList());
        }

        public ActionResult Search()
        {
            return View(_db.CurrentIndex.ToList());
        }

        public ActionResult MoreInfo()
        {
            return View(_db.CurrentIndex.ToList());
        }
    }
}
