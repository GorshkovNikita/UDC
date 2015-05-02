using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UDC.Models;
using UDC.Parser;

namespace UDC.Controllers
{

    public class HomeController : Controller
    {
        public ActionResult Index(string removed, string specialdet)
        {
            CurrentConfig.Removed = removed;
            CurrentConfig.SpecialDet = specialdet;
            if (CurrentConfig.Index == null)
                CurrentConfig.Index = "";
            if (CurrentConfig.Index.Contains('"'))
                ViewData["CurrentIndex"] = CurrentConfig.Index.Replace("\"", "&quot;");
            else
                ViewData["CurrentIndex"] = CurrentConfig.Index;
            return View(UDCData.AllMainTableIndexes);
        }

        public ActionResult Search(string index, string name, string search_type)
        {
            if (CurrentConfig.Index == null)
                CurrentConfig.Index = "";
            if (CurrentConfig.Index.Contains('"'))
                ViewData["CurrentIndex"] = CurrentConfig.Index.Replace("\"", "&quot;");
            else
                ViewData["CurrentIndex"] = CurrentConfig.Index;
            return View(SearchEngine.SearchBy(Convert.ToInt32(search_type), index, name));
        }

        public ActionResult MoreInfo(string index)
        {
            if (CurrentConfig.Index == null)
                CurrentConfig.Index = "";
            if (CurrentConfig.Index.Contains('"'))
                ViewData["CurrentIndex"] = CurrentConfig.Index.Replace("\"", "&quot;");
            else
                ViewData["CurrentIndex"] = CurrentConfig.Index;
            return View(new IndexModel(Convert.ToInt32(index)));
        }

        public ActionResult SpecificDeterminants()
        {
            if (CurrentConfig.Index == null)
                CurrentConfig.Index = "";
            if (CurrentConfig.Index.Contains('"'))
                ViewData["CurrentIndex"] = CurrentConfig.Index.Replace("\"", "&quot;");
            else
                ViewData["CurrentIndex"] = CurrentConfig.Index;
            return View();
        }

        public ActionResult CreatedIndex(string stringUDC)
        {
            CurrentConfig.Index = stringUDC;
            try
            {
                string xmlString = MyXmlClass.GetStringXml(stringUDC);
                CurrentConfig.XmlResultString = XmlHelper.ProcessXml(xmlString);
            }
            catch (Exception e2)
            {
                CurrentConfig.XmlResultString = null;
            }
            if (CurrentConfig.Index == null)
                CurrentConfig.Index = "";
            if (CurrentConfig.Index.Contains('"'))
                ViewData["CurrentIndex"] = CurrentConfig.Index.Replace("\"", "&quot;");
            else
                ViewData["CurrentIndex"] = CurrentConfig.Index;
            ViewData["XmlResultString"] = CurrentConfig.XmlResultString;
            return View();
        }
    }
}
