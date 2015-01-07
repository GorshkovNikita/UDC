using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UDC.Models;

namespace UDC.Controllers
{
    public class AjaxController : Controller
    {
        //
        // GET: /Ajax/

        public CurrentIndexLtSDataContext _db = new CurrentIndexLtSDataContext();

        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public void UpdateMainIndex(string mainIndex)
        {
            if (Request.IsAjaxRequest())
            {
                _db.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = 1", mainIndex);
                _db.SubmitChanges();
            }
        }

        [HttpPost]
        public void UpdateMainIndexPlus(String mainIndex)
        {
            if (Request.IsAjaxRequest())
            {
                List<String> lst = _db.ExecuteQuery<String>("SELECT TOP 1 MainTableID FROM dbo.CurrentIndex").ToList();
                if ((lst[0] != "") && !(lst[0].Contains("[")))
                {
                    _db.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = 1", "[" + lst[0] + "+" + mainIndex + "]");
                }
                else if (lst[0] == "")
                {
                    _db.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = 1", mainIndex);
                }
                else
                {
                    String newLst = lst[0].Remove(lst[0].Length - 1);
                    _db.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = 1", newLst + "+" + mainIndex + "]");
                }
                _db.SubmitChanges();
            }
        }

        [HttpPost]
        public void UpdateMainIndexSlash(String mainIndex)
        {
            if (Request.IsAjaxRequest())
            {
                List<String> lst = _db.ExecuteQuery<String>("SELECT TOP 1 MainTableID FROM dbo.CurrentIndex").ToList();
                if ((lst[0] != "") && !(lst[0].Contains("[")) && !(lst[0].Contains("+")) && !(lst[0].Contains("/")) && (lst[0].Length == mainIndex.Length))
                {
                    if (!(lst[0].Contains(".")))
                    {
                        _db.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = 1", lst[0] + "/" + mainIndex);
                    }
                    else
                    {
                        int idx = lst[0].LastIndexOf('.');
                        String firstPartLst = lst[0].Remove(idx);
                        String lastPartLst = lst[0].Remove(0, idx + 1);
                        String lastPartMainIndex = mainIndex.Remove(0, idx + 1);
                        _db.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = 1", firstPartLst + "." + lastPartLst + "/." + lastPartMainIndex);
                    }
                    _db.SubmitChanges();
                }
            }
        }

        [HttpPost]
        public void ClearMainIndexConstructor()
        {
            if (Request.IsAjaxRequest())
            {
                _db.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id >= 1", "");
                _db.SubmitChanges();
            }
        }

        public string SelectMainIndex(int limit)
        {
            if (Request.IsAjaxRequest())
            {
                List<string> lst = _db.ExecuteQuery<string>("SELECT TOP " + limit + "MainTableID FROM dbo.CurrentIndex").ToList();
                return lst[0];
            }
            return null;
        }

        [HttpPost]
        public void UpdateLanguage(string languageIndex)
        {
            if (Request.IsAjaxRequest())
            {
                _db.ExecuteCommand("UPDATE dbo.CurrentIndex SET LanguageID = {0} WHERE id = 1", languageIndex);
                _db.SubmitChanges();
            }
        }

        public string SelectLanguage(int limit)
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
