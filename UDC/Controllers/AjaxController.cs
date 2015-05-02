using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UDC.Models;
using UDC.Parser;

namespace UDC.Controllers
{
    public class AjaxController : Controller
    {
        //
        // GET: /Ajax/

        public static Int32 currentPartIndex;

        public PartialViewResult GetPartialView(Int32 id, string removed, string specialdet)
        {
            if (Request.IsAjaxRequest())
            {
                return PartialView("MainIndexNodePartial", new IndexModel(id, removed, specialdet));
            }
            return null;
        }

        public PartialViewResult GetPartialViewOfSpecialDeterminant(Int32 id)
        {
            if (Request.IsAjaxRequest())
            {
                return PartialView("SpecialDeterminantNodePartial", new IndexModel(id));
            }
            return null;
        }

        public void SetCursorPosition(string pos)
        {
            if (pos != null)
                CurrentConfig.CursorPosition = Convert.ToInt32(pos);
            else
                try
                {
                    CurrentConfig.CursorPosition = CurrentConfig.Index.Length - 1;
                }
                catch
                {
                    CurrentConfig.Index = "";
                    CurrentConfig.CursorPosition = 0;
                }
        }

        public String GetFullIndex()
        {
            if (Request.IsAjaxRequest())
            {
                return CurrentConfig.Index;
            }
            return null;
        }

        public int GetCursorPosition()
        {
            if (Request.IsAjaxRequest())
            {
                return CurrentConfig.CursorPosition;
            }
            return 0;
        }

        public void SetStringUDC(string partUDC)
        {
            if (Request.IsAjaxRequest())
            {
                if (partUDC == "8")
                {
                    if ((CurrentConfig.Index.Length > 0) && (CurrentConfig.CursorPosition > 0))
                    {
                        CurrentConfig.Index = CurrentConfig.Index.Remove(CurrentConfig.CursorPosition - 1, 1);
                        CurrentConfig.CursorPosition -= 1;
                    }
                }
                else
                {
                    CurrentConfig.Index = CurrentConfig.Index.Insert(CurrentConfig.CursorPosition, partUDC);
                    CurrentConfig.CursorPosition += partUDC.Length;
                }
            }
        }

        public void ClearConstructor()
        {
            if (Request.IsAjaxRequest())
            {
                CurrentConfig.Index = "";
                CurrentConfig.CursorPosition = 0;
            }
        }
    }
}