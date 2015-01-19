using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UDC.Models;
using UDC.Extensions;

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

        public ActionResult CreatedIndex()
        {
            UDCIndex udc = AjaxController.UDC;
            Int32 countParts = udc.GetUdcParts().Count;
            ViewData["countParts"] = countParts;
            for (Int32 i = 0; i < countParts; i++)
            {
                ViewData["mainIndexCountParts" + i] = udc.GetUdcParts()[i].GetPartsOfMainIndex().Count;
                for (Int32 j = 0; j < udc.GetUdcParts()[i].GetPartsOfMainIndex().Count; j++)
                {
                    ViewData["mainIndex" + i + "Part" + j] = udc.GetUdcParts()[i].GetPartsOfMainIndex()[j];
                }
                ViewData["placeIndexCountParts" + i] = udc.GetUdcParts()[i].GetPartsOfPlaceIndex().Count;
                for (Int32 m = 0; m < udc.GetUdcParts()[i].GetPartsOfPlaceIndex().Count; m++)
                {
                    ViewData["placeIndex" + i + "Part" + m] = udc.GetUdcParts()[i].GetPartsOfPlaceIndex()[m];
                }
                ViewData["languageIndexCountParts" + i] = udc.GetUdcParts()[i].GetPartsOfLanguageIndex().Count;
                for (Int32 k = 0; k < udc.GetUdcParts()[i].GetPartsOfLanguageIndex().Count; k++)
                {
                    ViewData["languageIndex" + i + "Part" + k] = udc.GetUdcParts()[i].GetPartsOfLanguageIndex()[k];
                }
                ViewData["signBetween" + i] = udc.GetUdcParts()[i].GetSignBetween();
            }
            return View(_db.CurrentIndex.ToList());
        }
    }
}
