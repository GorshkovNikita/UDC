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
        public CurrentIndexDataContext _db = new CurrentIndexDataContext();

        //
        // GET: /CommonDeteriminant/

        public ActionResult Index()
        {
            return View(_db.CurrentIndex.ToList());
        }

        public ActionResult Language()
        {
            return View(_db.CurrentIndex.ToList());
        }

        public ActionResult Nation()
        {
            return View(_db.CurrentIndex.ToList());
        }

        public ActionResult FormDocument()
        {
            return View(_db.CurrentIndex.ToList());
        }

        public ActionResult Place()
        {
            return View(_db.CurrentIndex.ToList());
        }

        public ActionResult Time()
        {
            return View(_db.CurrentIndex.ToList());
        }
    }
}
