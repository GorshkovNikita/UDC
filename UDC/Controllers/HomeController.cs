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
        public ActionResult Index(string id)
        {
            CurrentIndex.Index = "123.1";
            ViewData["CurrentIndex"] = CurrentIndex.Index;
            return View(UDCData.AllMainTableIndexes);
        }

        public ActionResult Search()
        {
            ViewData["CurrentIndex"] = CurrentIndex.Index;
            return View();
        }

        public ActionResult MoreInfo(string index)
        {
            ViewData["CurrentIndex"] = CurrentIndex.Index;
            return View(new IndexModel(Convert.ToInt32(index)));
        }

        public ActionResult SpecificDeterminants()
        {
            ViewData["CurrentIndex"] = CurrentIndex.Index;
            return View();
        }

        public ActionResult CreatedIndex()
        {
            ViewData["CurrentIndex"] = CurrentIndex.Index;
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
                ViewData["timeIndexCountParts" + i] = udc.GetUdcParts()[i].GetPartsOfTimeIndex().Count;
                for (Int32 m = 0; m < udc.GetUdcParts()[i].GetPartsOfTimeIndex().Count; m++)
                {
                    ViewData["timeIndex" + i + "Part" + m] = udc.GetUdcParts()[i].GetPartsOfTimeIndex()[m];
                }
                ViewData["nationIndexCountParts" + i] = udc.GetUdcParts()[i].GetPartsOfNationIndex().Count;
                for (Int32 m = 0; m < udc.GetUdcParts()[i].GetPartsOfNationIndex().Count; m++)
                {
                    ViewData["nationIndex" + i + "Part" + m] = udc.GetUdcParts()[i].GetPartsOfNationIndex()[m];
                }
                ViewData["formIndexCountParts" + i] = udc.GetUdcParts()[i].GetPartsOfFormIndex().Count;
                for (Int32 m = 0; m < udc.GetUdcParts()[i].GetPartsOfFormIndex().Count; m++)
                {
                    ViewData["formIndex" + i + "Part" + m] = udc.GetUdcParts()[i].GetPartsOfFormIndex()[m];
                }
                ViewData["languageIndexCountParts" + i] = udc.GetUdcParts()[i].GetPartsOfLanguageIndex().Count;
                for (Int32 k = 0; k < udc.GetUdcParts()[i].GetPartsOfLanguageIndex().Count; k++)
                {
                    ViewData["languageIndex" + i + "Part" + k] = udc.GetUdcParts()[i].GetPartsOfLanguageIndex()[k];
                }
                ViewData["signBetween" + i] = udc.GetUdcParts()[i].GetSignBetween();
            }
            return View();
        }
    }
}
