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
        public CurrentIndexLtSDataContext _db = new CurrentIndexLtSDataContext();

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

        public void Update(string languageIndex)
        {
            if (Request.IsAjaxRequest())
            {
                _db.ExecuteCommand("UPDATE dbo.CurrentIndex SET LanguageID = {0} WHERE id = 1", languageIndex);
                _db.SubmitChanges();
            }
        }

        public string Select(int limit)
        {
            if (Request.IsAjaxRequest())
            {
                List<string> lst = _db.ExecuteQuery<string>("SELECT TOP " + limit + " LanguageID FROM dbo.CurrentIndex").ToList();
                return lst[0];
            }
            return null;
        }
    }
}
