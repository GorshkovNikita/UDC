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

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Contact()
        {
            return View();
        }

        [HttpPost]
        public void Update(string mainIndex)
        {
            if (Request.IsAjaxRequest())
            {
                _db.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = 1", mainIndex);
                _db.SubmitChanges();
            }
        }

        public string Select(int limit)
        {
            if (Request.IsAjaxRequest())
            {
                List<string> lst = _db.ExecuteQuery<string>("SELECT TOP " + limit + "MainTableID FROM dbo.CurrentIndex").ToList();
                return lst[0];
            }
            return null;
        }
    }
}
