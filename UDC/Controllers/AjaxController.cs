using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UDC.Models;
using UDC.Extensions;
using UDC.Parser;

namespace UDC.Controllers
{
    public class AjaxController : Controller
    {
        //
        // GET: /Ajax/

        public static Int32 currentPartIndex;
        public static UDCIndex UDC;

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
                    CurrentConfig.CursorPosition = CurrentConfig.Index.Length;
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
                CurrentConfig.CursorPosition = CurrentConfig.Index.Length;
                return CurrentConfig.Index;
            }
            return null;
        }

        public void SetStringUDC(string partUDC)
        {
            if (Request.IsAjaxRequest())
            {
                if (partUDC == "8")
                {
                    CurrentConfig.Index = CurrentConfig.Index.Remove(CurrentConfig.CursorPosition, 1);
                    CurrentConfig.CursorPosition -= 1;
                }
                else if (partUDC == "43")
                {
                    CurrentConfig.Index = CurrentConfig.Index.Insert(CurrentConfig.CursorPosition, "+");
                    CurrentConfig.CursorPosition += partUDC.Length;
                }
                else
                {
                    CurrentConfig.Index = CurrentConfig.Index.Insert(CurrentConfig.CursorPosition, partUDC);
                    CurrentConfig.CursorPosition += partUDC.Length;
                }
                //return CurrentConfig.Index;
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

        public Int32 GetCurrentPartIndex()
        {
            if (Request.IsAjaxRequest())
            {
                return currentPartIndex;
            }
            return 0;
        }

        [HttpPost]
        public void SetCurrentPartIndex()
        {
            if (Request.IsAjaxRequest())
            {
                if (currentPartIndex <= 0)
                    currentPartIndex = 1;
            }
        }

        [HttpPost]
        public void CurrentPartIndexIncrement()
        {
            if (Request.IsAjaxRequest())
            {
                List<Int32> count = UDCData.DB.ExecuteQuery<Int32>("SELECT TOP 1 COUNT(*) FROM dbo.CurrentIndex").ToList();
                if ((currentPartIndex > 0) && (currentPartIndex < count[0]))
                {
                    currentPartIndex++;
                }
            }
        }

        [HttpPost]
        public void CurrentPartIndexDecrement()
        {
            if (Request.IsAjaxRequest())
            {
                //List<Int32> count = _db.ExecuteQuery<Int32>("SELECT TOP 1 COUNT(*) FROM dbo.CurrentIndex").ToList();
                if ((currentPartIndex > 1))
                {
                    currentPartIndex--;
                }
            }
        }

        [HttpPost]
        public void UpdateMainIndex(String mainIndex)
        {
            if (Request.IsAjaxRequest())
            {
                UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = {1}", mainIndex, currentPartIndex);
                UDCData.DB.SubmitChanges();
            }
        }

        [HttpPost]
        public void UpdateMainIndexPlus(String mainIndex)
        {
            if (Request.IsAjaxRequest())
            {
                List<String> lst = UDCData.DB.ExecuteQuery<String>("SELECT MainTableID FROM dbo.CurrentIndex WHERE id = {0}", currentPartIndex).ToList();
                if ((lst[0] != "") && !(lst[0].Contains("[")))
                {
                    UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = {1}", "[" + lst[0] + "+" + mainIndex + "]", currentPartIndex);
                }
                else if (lst[0] == "")
                {
                    UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = {1}", mainIndex, currentPartIndex);
                }
                else
                {
                    String newLst = lst[0].Remove(lst[0].Length - 1);
                    UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = {1}", newLst + "+" + mainIndex + "]", currentPartIndex);
                }
                UDCData.DB.SubmitChanges();
            }
        }

        [HttpPost]
        public void UpdateMainIndexSlash(String mainIndex)
        {
            if (Request.IsAjaxRequest())
            {
                List<String> lst = UDCData.DB.ExecuteQuery<String>("SELECT MainTableID FROM dbo.CurrentIndex WHERE id = {0}", currentPartIndex).ToList();
                if ((lst[0] != "") && !(lst[0].Contains("[")) && !(lst[0].Contains("+")) && !(lst[0].Contains("/")) && (lst[0].Length == mainIndex.Length))
                {
                    if (!(lst[0].Contains(".")))
                    {
                        UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = {1}", lst[0] + "/" + mainIndex, currentPartIndex);
                    }
                    else
                    {
                        int idx = lst[0].LastIndexOf('.');
                        String firstPartLst = lst[0].Remove(idx);
                        String lastPartLst = lst[0].Remove(0, idx + 1);
                        String lastPartMainIndex = mainIndex.Remove(0, idx + 1);
                        UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = {1}", firstPartLst + "." + lastPartLst + "/." + lastPartMainIndex, currentPartIndex);
                    }
                    UDCData.DB.SubmitChanges();
                }
                else
                {
                    List<String> partOfMainIndex = ExtensionFunctions.MainIndexParse(lst[0]);
                    if (!(partOfMainIndex[partOfMainIndex.Count - 1].Contains(".")))
                    {
                        lst[0] = lst[0].Remove(lst[0].LastIndexOf('+') + 1);
                        UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = {1}", lst[0] + partOfMainIndex[partOfMainIndex.Count - 1] + "/" + mainIndex + "]", currentPartIndex);
                    }
                    else
                    {
                        lst[0] = lst[0].Remove(lst[0].LastIndexOf('+') + 1);
                        int idx = partOfMainIndex[partOfMainIndex.Count - 1].LastIndexOf('.');
                        String firstPartLst = partOfMainIndex[partOfMainIndex.Count - 1].Remove(idx);
                        String lastPartLst = partOfMainIndex[partOfMainIndex.Count - 1].Remove(0, idx + 1);
                        String lastPartMainIndex = mainIndex.Remove(0, idx + 1);
                        UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = {1}", lst[0] + firstPartLst + "." + lastPartLst + "/." + lastPartMainIndex + "]", currentPartIndex);
                    }
                    UDCData.DB.SubmitChanges();
                }
            }
        }

        [HttpPost]
        public void UpdateMainIndexSpecDet(String specDetIndex)
        {
            if (Request.IsAjaxRequest())
            {
                List<String> lst = UDCData.DB.ExecuteQuery<String>("SELECT MainTableID FROM dbo.CurrentIndex WHERE id = {0}", currentPartIndex).ToList();
                if ((lst[0] != "") && !(lst[0].Contains("[")) && !(lst[0].Contains("+")) && !(lst[0].Contains("/")))
                {
                    //if (!(lst[0].Contains(".")))
                    //{
                    UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = {1}", lst[0] + specDetIndex, currentPartIndex);
                    /*}
                    else
                    {
                        int idx = lst[0].LastIndexOf('.');
                        String firstPartLst = lst[0].Remove(idx);
                        String lastPartLst = lst[0].Remove(0, idx + 1);
                        String lastPartMainIndex = specDetIndex.Remove(0, idx + 1);
                        _db.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = {1}", firstPartLst + "." + lastPartLst + "/." + lastPartMainIndex, currentPartIndex);
                    }*/
                    UDCData.DB.SubmitChanges();
                }
                else if (lst[0] != "")
                {
                    List<String> partOfMainIndex = ExtensionFunctions.MainIndexParse(lst[0]);
                    lst[0] = lst[0].Remove(lst[0].LastIndexOf('+') + 1);
                    UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET MainTableID = {0} WHERE id = {1}", lst[0] + partOfMainIndex[partOfMainIndex.Count - 1] + specDetIndex + ']', currentPartIndex);
                    UDCData.DB.SubmitChanges();
                }
            }
        }

        [HttpPost]
        public void UpdateLanguage(String languageIndex)
        {
            if (Request.IsAjaxRequest())
            {
                UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET LanguageID = {0} WHERE id = {1}", languageIndex, currentPartIndex);
                UDCData.DB.SubmitChanges();
            }
        }

        [HttpPost]
        public void UpdateLanguagePlus(String languageIndex)
        {
            if (Request.IsAjaxRequest())
            {
                List<String> lst = UDCData.DB.ExecuteQuery<String>("SELECT LanguageID FROM dbo.CurrentIndex WHERE id = {0}", currentPartIndex).ToList();
                UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET LanguageID = {0} WHERE id = {1}", lst[0] + languageIndex, currentPartIndex);
                UDCData.DB.SubmitChanges();
            }
        }

        [HttpPost]
        public void UpdateLanguageTranslate(String languageIndex)
        {
            if (Request.IsAjaxRequest())
            {
                List<String> lst = UDCData.DB.ExecuteQuery<String>("SELECT LanguageID FROM dbo.CurrentIndex WHERE id = {0}", currentPartIndex).ToList();
                UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET LanguageID = {0} WHERE id = {1}", lst[0] + "=03." + languageIndex.Substring(1, languageIndex.Length - 1), currentPartIndex);
                UDCData.DB.SubmitChanges();
            }
        }

        [HttpPost]
        public void UpdatePlaceIndex(String placeIndex)
        {
            if (Request.IsAjaxRequest())
            {
                UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET PlaceID = {0} WHERE id = {1}", placeIndex, currentPartIndex);
                UDCData.DB.SubmitChanges();
            }
        }

        [HttpPost]
        public void UpdatePlaceIndexPlus(String placeIndex)
        {
            if (Request.IsAjaxRequest())
            {
                List<String> lst = UDCData.DB.ExecuteQuery<String>("SELECT PlaceID FROM dbo.CurrentIndex WHERE id = {0}", currentPartIndex).ToList();
                if (lst[0] != "")
                {
                    placeIndex = ExtensionFunctions.DeleteBrackets(placeIndex);
                    lst[0] = lst[0].Remove(lst[0].IndexOf(')'), 1);
                    lst[0] += '+' + placeIndex;
                    UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET PlaceID = {0} WHERE id = {1}", lst[0] + ')', currentPartIndex);
                    UDCData.DB.SubmitChanges();
                }
                else
                {
                    UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET PlaceID = {0} WHERE id = {1}", placeIndex, currentPartIndex);
                    UDCData.DB.SubmitChanges();
                }
            }
        }

        [HttpPost]
        public void UpdatePlaceIndexSlash(String placeIndex)
        {
            if (Request.IsAjaxRequest())
            {
                String lastPart;
                List<String> lst = UDCData.DB.ExecuteQuery<String>("SELECT PlaceID FROM dbo.CurrentIndex WHERE id = {0}", currentPartIndex).ToList();
                if (lst[0].Length > 0)
                {
                    placeIndex = ExtensionFunctions.DeleteBrackets(placeIndex);
                    lst[0] = lst[0].Remove(lst[0].IndexOf(')'), 1);
                    if (lst[0].Contains('+'))
                    {
                        lastPart = lst[0].Remove(0, lst[0].LastIndexOf('+') + 1);
                        lst[0] = lst[0].Remove(lst[0].LastIndexOf(lastPart), lastPart.Length);
                    }
                    else
                    {
                        lastPart = lst[0].Remove(0, lst[0].LastIndexOf('(') + 1);
                        lst[0] = lst[0].Remove(lst[0].LastIndexOf(lastPart), lastPart.Length);
                    }
                    if (!lastPart.Contains('/'))
                    {
                        if (!(lastPart.Contains(".")))
                        {
                            if ((lastPart.Length == placeIndex.Length) && (Convert.ToInt32(lastPart) < Convert.ToInt32(placeIndex)))
                                UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET PlaceID = {0} WHERE id = {1}", lst[0] + lastPart + "/" + placeIndex + ')', currentPartIndex);
                        }
                        else
                        {
                            int idx = lastPart.LastIndexOf('.');
                            String firstPart = lastPart.Remove(idx + 1);
                            String secondPart = lastPart.Remove(0, idx + 1);
                            String lastPartPlaceIndex = placeIndex.Remove(0, idx + 1);
                            if ((secondPart.Length == lastPartPlaceIndex.Length) && (Convert.ToInt32(secondPart) < Convert.ToInt32(lastPartPlaceIndex)))
                            {
                                UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET PlaceID = {0} WHERE id = {1}", lst[0] + firstPart + secondPart + "/." + lastPartPlaceIndex + ')', currentPartIndex);
                            }
                        }
                        UDCData.DB.SubmitChanges();
                    }
                }
            }
        }

        [HttpPost]
        public void UpdateTimeIndex(String timeIndex)
        {
            if (Request.IsAjaxRequest())
            {
                UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET TimeID = {0} WHERE id = {1}", timeIndex, currentPartIndex);
                UDCData.DB.SubmitChanges();
            }
        }

        [HttpPost]
        public void UpdateTimeIndexPlus(String timeIndex)
        {
            if (Request.IsAjaxRequest())
            {
                List<String> lst = UDCData.DB.ExecuteQuery<String>("SELECT TimeID FROM dbo.CurrentIndex WHERE id = {0}", currentPartIndex).ToList();
                if (lst[0] != "")
                {
                    timeIndex = ExtensionFunctions.DeleteBrackets(timeIndex);
                    lst[0] = lst[0].Remove(lst[0].LastIndexOf('"'), 1);
                    lst[0] += '+' + timeIndex;
                    UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET TimeID = {0} WHERE id = {1}", lst[0] + '"', currentPartIndex);
                    UDCData.DB.SubmitChanges();
                }
                else
                {
                    UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET TimeID = {0} WHERE id = {1}", timeIndex, currentPartIndex);
                    UDCData.DB.SubmitChanges();
                }
            }
        }

        [HttpPost]
        public void UpdateTimeIndexSlash(String timeIndex)
        {
            if (Request.IsAjaxRequest())
            {
                String lastPart;
                List<String> lst = UDCData.DB.ExecuteQuery<String>("SELECT TimeID FROM dbo.CurrentIndex WHERE id = {0}", currentPartIndex).ToList();
                if (lst[0].Length > 0)
                {
                    timeIndex = ExtensionFunctions.DeleteBrackets(timeIndex);
                    lst[0] = lst[0].Remove(lst[0].LastIndexOf('"'), 1);
                    if (lst[0].Contains('+'))
                    {
                        lastPart = lst[0].Remove(0, lst[0].LastIndexOf('+') + 1);
                        lst[0] = lst[0].Remove(lst[0].LastIndexOf(lastPart), lastPart.Length);
                    }
                    else
                    {
                        lastPart = lst[0].Remove(0, lst[0].IndexOf('"') + 1);
                        lst[0] = lst[0].Remove(lst[0].LastIndexOf(lastPart), lastPart.Length);
                    }
                    if (!lastPart.Contains('/'))
                    {
                        if (!(lastPart.Contains(".")))
                        {
                            if ((lastPart.Length == timeIndex.Length) && (Convert.ToInt32(lastPart) < Convert.ToInt32(timeIndex)))
                                UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET TimeID = {0} WHERE id = {1}", lst[0] + lastPart + "/" + timeIndex + '"', currentPartIndex);
                        }
                        else
                        {
                            int idx = lastPart.LastIndexOf('.');
                            String firstPart = lastPart.Remove(idx + 1);
                            String secondPart = lastPart.Remove(0, idx + 1);
                            String lastPartPlaceIndex = timeIndex.Remove(0, idx + 1);
                            if ((secondPart.Length == lastPartPlaceIndex.Length) && (Convert.ToInt32(secondPart) < Convert.ToInt32(lastPartPlaceIndex)))
                            {
                                UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET PlaceID = {0} WHERE id = {1}", lst[0] + firstPart + secondPart + "/." + lastPartPlaceIndex + '"', currentPartIndex);
                            }
                        }
                        UDCData.DB.SubmitChanges();
                    }
                }
            }
        }

        [HttpPost]
        public void UpdateNationIndex(String nationIndex)
        {
            if (Request.IsAjaxRequest())
            {
                UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET NationID = {0} WHERE id = {1}", nationIndex, currentPartIndex);
                UDCData.DB.SubmitChanges();
            }
        }

        [HttpPost]
        public void UpdateNationIndexPlus(String nationIndex)
        {
            if (Request.IsAjaxRequest())
            {
                List<String> lst = UDCData.DB.ExecuteQuery<String>("SELECT NationID FROM dbo.CurrentIndex WHERE id = {0}", currentPartIndex).ToList();
                if (lst[0] != "")
                {
                    nationIndex = ExtensionFunctions.DeleteBrackets(nationIndex);
                    lst[0] = lst[0].Remove(lst[0].LastIndexOf(')'), 1);
                    lst[0] += nationIndex;
                    UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET NationID = {0} WHERE id = {1}", lst[0] + ')', currentPartIndex);
                    UDCData.DB.SubmitChanges();
                }
                else
                {
                    UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET NationID = {0} WHERE id = {1}", nationIndex, currentPartIndex);
                    UDCData.DB.SubmitChanges();
                }
            }
        }

        [HttpPost]
        public void UpdateFormIndex(String formIndex)
        {
            if (Request.IsAjaxRequest())
            {
                UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET FormID = {0} WHERE id = {1}", formIndex, currentPartIndex);
                UDCData.DB.SubmitChanges();
            }
        }

        [HttpPost]
        public void UpdateSign(String between)
        {
            if (Request.IsAjaxRequest())
            {
                List<Int32> count = UDCData.DB.ExecuteQuery<Int32>("SELECT TOP 1 COUNT(*) FROM dbo.CurrentIndex").ToList();
                currentPartIndex = count[0] + 1;
                UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET SignBetween = {0} WHERE id = {1}", between, count[0]);
                UDCData.DB.SubmitChanges();
                UDCData.DB.ExecuteCommand("UPDATE dbo.CurrentIndex SET FirstBracket = {0}, SecondBracket = {1} WHERE id = {2}", '[', ']', count[0]);
                UDCData.DB.SubmitChanges();
                UDCData.DB.ExecuteCommand("INSERT INTO dbo.CurrentIndex ([id], [MainTableID],[LanguageID],[FormID],[TimeID],[PlaceID],[NationID],[PropertyID],[SignBetween],[FirstBracket],[SecondBracket]) VALUES({0}, '', '', '', '', '', '', '', '', '[', ']')", currentPartIndex);
                UDCData.DB.SubmitChanges();
            }
        }

        [HttpPost]
        //public ActionResult UDCCreate(String stringUDC, String tree, String db)
        public ActionResult UDCCreate(String stringUDC)
        {
            CurrentConfig.Index = stringUDC;
            try
            {
                CurrentConfig.XmlResultString = MyXmlClass.GetStringXml(stringUDC);
                //textBox2.Text = resStr.ToString();
            }
            catch (Exception e2)
            {
                CurrentConfig.XmlResultString = null;
                //textBox2.Text = "";
                //MessageBox.Show("Не удалось распознать сложный индекс");
            }
            return RedirectToAction("CreatedIndex", "Home");
            /*Boolean treeBool = Convert.ToBoolean(tree);
            Boolean dbBool = Convert.ToBoolean(db);
            List<Int32> count = UDCData.DB.ExecuteQuery<Int32>("SELECT TOP 1 COUNT(*) FROM dbo.CurrentIndex").ToList();
            UDCIndex udc = new UDCIndex(count[0]);
            Char currentSymbol; // текущий символ строки УДК
            Int32 countOpenBrackets = 0, countCloseBrackets = 0; // количество скобок []
            Char lastSpecSymbol = '%'; // последний специальный символ, % - обозначает основную часть индекса
            String currentString = ""; // строка, содержащая текущую строку индекса
            Boolean form = false; // форма документа?
            Boolean firstQuote = false;
            Boolean nation = false;
            // определение количества частей вводимого индекса
            Boolean notOnePart;
            if (stringUDC.Contains("]+"))
                notOnePart = true;
            else if (stringUDC.Contains("]:"))
                notOnePart = true;
            else if (stringUDC.Contains("]::"))
                notOnePart = true;
            else
                notOnePart = false;
            if (notOnePart)
            {
                while (stringUDC.Length != 0)
                {
                    UDCPart part = new UDCPart();
                    lastSpecSymbol = '%';
                    currentSymbol = stringUDC[0];
                    stringUDC = stringUDC.Remove(0, 1);
                    // получение первой скобки части индекса
                    if (currentSymbol == '[')
                    {
                        countOpenBrackets++;
                        // парсер части индекса
                        // цикл - пока не дойдем до второй скобки части индекса
                        while ((countOpenBrackets != countCloseBrackets))
                        {
                            currentSymbol = stringUDC[0];
                            stringUDC = stringUDC.Remove(0, 1);
                            // встречаем первую скобку
                            if (currentSymbol == '[')
                            {
                                countOpenBrackets++;
                            }
                            // встречаем вторую скобку
                            else if (currentSymbol == ']')
                            {
                                countCloseBrackets++;
                            }
                            else if (currentSymbol == '(')
                            {
                                // если общий определитель нации
                                if (stringUDC[0] == '=')
                                {
                                    nation = true;
                                    stringUDC = stringUDC.Remove(0, 1);
                                    switch (lastSpecSymbol)
                                    {
                                        case '%':
                                            part.MainIndexAdd(currentString);
                                            break;
                                        case '=':
                                            part.LanguageIndexAdd(currentString);
                                            break;
                                    }
                                    lastSpecSymbol = '&';
                                    currentString = "";
                                }
                                // если общий определитель места
                                else if (stringUDC[0] != '0')
                                {
                                    switch (lastSpecSymbol)
                                    {
                                        case '%':
                                            part.MainIndexAdd(currentString);
                                            break;
                                        case '=':
                                            part.LanguageIndexAdd(currentString);
                                            break;
                                    }
                                    lastSpecSymbol = '(';
                                    currentString = "";
                                }
                                
                                // если общий определитель формы документа
                                else
                                {
                                    form = true;
                                    stringUDC = stringUDC.Remove(0, 1);
                                    switch (lastSpecSymbol)
                                    {
                                        case '%':
                                            part.MainIndexAdd(currentString);
                                            break;
                                        case '=':
                                            part.LanguageIndexAdd(currentString);
                                            break;
                                    }
                                    lastSpecSymbol = '#';
                                    currentString = "";
                                }
                            }
                            else if (currentSymbol == ')')
                            {
                                currentString = String.Concat(currentString, currentSymbol);
                                switch (lastSpecSymbol)
                                {
                                    case '(':
                                        part.PlaceIndexAdd(currentString);
                                        break;
                                    case '#':
                                        part.FormIndexAdd(currentString);
                                        form = false;
                                        break;
                                    case '&':
                                        part.NationIndexAdd(currentString);
                                        nation = false;
                                        break;
                                }
                                currentString = "";
                            }
                            // первая кавычка
                            else if ((currentSymbol == '"') && (!firstQuote))
                            {
                                switch (lastSpecSymbol)
                                {
                                    case '%':
                                        part.MainIndexAdd(currentString);
                                        break;
                                    case '=':
                                        part.LanguageIndexAdd(currentString);
                                        break;
                                }
                                lastSpecSymbol = '"';
                                currentString = "";
                                firstQuote = true;
                            }
                            // вторая кавычка
                            else if ((currentSymbol == '"') && (firstQuote))
                            {
                                currentString = String.Concat(currentString, currentSymbol);
                                switch (lastSpecSymbol)
                                {
                                    case '"':
                                        part.TimeIndexAdd(currentString);
                                        break;
                                }
                                currentString = "";
                                firstQuote = false;
                            }
                            // встречаем = - общий определитель языка
                            else if (currentSymbol == '=')
                            {
                                if (!nation)
                                {
                                    switch (lastSpecSymbol)
                                    {
                                        case '%':
                                            part.MainIndexAdd(currentString);
                                            currentString = "";
                                            break;
                                    }
                                    lastSpecSymbol = '=';
                                }
                            }
                            // добавляем в строку текущий индекс
                            if ((countOpenBrackets != countCloseBrackets))
                                if (currentSymbol != ')')
                                    currentString = String.Concat(currentString, currentSymbol);
                            if (currentSymbol == '(')
                            {
                                if (form)
                                {
                                    currentString = String.Concat(currentString, '0');
                                }
                                if (nation)
                                {
                                    currentString = String.Concat(currentString, '=');
                                }
                            } 
                            // действия при последнем элементе строки индекса УДК
                            if (countOpenBrackets == countCloseBrackets)
                            {
                                switch (lastSpecSymbol)
                                {
                                    case '%':
                                        part.MainIndexAdd(currentString);
                                        break;
                                    case '=':
                                        part.LanguageIndexAdd(currentString);
                                        break;
                                }
                                currentString = "";
                            }
                        }
                    }
                    if (stringUDC.Length > 0)
                        currentSymbol = stringUDC[0];
                    if (currentSymbol == '+')
                    {
                        stringUDC = stringUDC.Remove(0, 1);
                        part.SignBetweenAdd("+");
                    }
                    else if (currentSymbol == ':')
                    {
                        currentSymbol = stringUDC[1];
                        if (currentSymbol == ':')
                        {
                            stringUDC = stringUDC.Remove(0, 2);
                            part.SignBetweenAdd("::");
                        }
                        else
                        {
                            stringUDC = stringUDC.Remove(0, 1);
                            part.SignBetweenAdd(":");
                        }
                    }
                    udc.AddPartIndex(part);
                }
            }
            else
            {
                UDCPart part = new UDCPart();
                while (stringUDC.Length != 0)
                {
                    currentSymbol = stringUDC[0];
                    stringUDC = stringUDC.Remove(0, 1);
                    // встречаем первую скобку
                    if (currentSymbol == '[')
                    {
                        countOpenBrackets++;
                    }
                    // встречаем вторую скобку
                    else if (currentSymbol == ']')
                    {
                        countCloseBrackets++;
                    }
                    else if (currentSymbol == '(')
                    {
                        // если общий определитель нации
                        if (stringUDC[0] == '=')
                        {
                            nation = true;
                            stringUDC = stringUDC.Remove(0, 1);
                            switch (lastSpecSymbol)
                            {
                                case '%':
                                    part.MainIndexAdd(currentString);
                                    break;
                                case '=':
                                    part.LanguageIndexAdd(currentString);
                                    break;
                            }
                            lastSpecSymbol = '&';
                            currentString = "";
                        }
                        // если общий определитель места
                        else if (stringUDC[0] != '0')
                        {
                            switch (lastSpecSymbol)
                            {
                                case '%':
                                    part.MainIndexAdd(currentString);
                                    break;
                                case '=':
                                    part.LanguageIndexAdd(currentString);
                                    break;
                            }
                            lastSpecSymbol = '(';
                            currentString = "";
                        }
                        // если общий определитель формы документа
                        else
                        {
                            form = true;
                            stringUDC = stringUDC.Remove(0, 1);
                            switch (lastSpecSymbol)
                            {
                                case '%':
                                    part.MainIndexAdd(currentString);
                                    break;
                                case '=':
                                    part.LanguageIndexAdd(currentString);
                                    break;
                            }
                            lastSpecSymbol = '#';
                            currentString = "";
                        }
                    }
                    else if (currentSymbol == ')')
                    {
                        currentString = String.Concat(currentString, currentSymbol);
                        switch (lastSpecSymbol)
                        {
                            case '(':
                                part.PlaceIndexAdd(currentString);
                                break;
                            case '#':
                                part.FormIndexAdd(currentString);
                                form = false;
                                break;
                            case '&':
                                part.NationIndexAdd(currentString);
                                nation = false;
                                break;
                        }
                        currentString = "";
                    }
                    // первая кавычка
                    else if ((currentSymbol == '"') && (!firstQuote))
                    {
                        switch (lastSpecSymbol)
                        {
                            case '%':
                                part.MainIndexAdd(currentString);
                                break;
                            case '=':
                                part.LanguageIndexAdd(currentString);
                                break;
                        }
                        lastSpecSymbol = '"';
                        currentString = "";
                        firstQuote = true;
                    }
                    // вторая кавычка
                    else if ((currentSymbol == '"') && (firstQuote))
                    {
                        currentString = String.Concat(currentString, currentSymbol);
                        switch (lastSpecSymbol)
                        {
                            case '"':
                                part.TimeIndexAdd(currentString);
                                break;
                        }
                        currentString = "";
                        firstQuote = false;
                    }
                    // встречаем = - общий определитель языка
                    else if (currentSymbol == '=')
                    {
                        if (!nation)
                        {
                            switch (lastSpecSymbol)
                            {
                                case '%':
                                    part.MainIndexAdd(currentString);
                                    currentString = "";
                                    break;
                            }
                            lastSpecSymbol = '=';
                        }
                    }
                    // добавляем в строку текущий индекс
                    if (currentSymbol != ')')
                        currentString = String.Concat(currentString, currentSymbol);
                    if (currentSymbol == '(')
                    {
                        if (form)
                        {
                            currentString = String.Concat(currentString, '0');
                        }
                        if (nation)
                        {
                            currentString = String.Concat(currentString, '=');
                        }
                    } 
                    // действия при последнем элементе строки индекса УДК
                    if (stringUDC.Length == 0)
                    {
                        switch (lastSpecSymbol)
                        {
                            case '%':
                                part.MainIndexAdd(currentString);
                                break;
                            case '=':
                                part.LanguageIndexAdd(currentString);
                                break;
                        }
                        currentString = "";
                    }
                }
                udc.AddPartIndex(part);
            }
            if (dbBool)
                udc.AddUDCInDataBase();
            udc.Parse();
            UDC = udc;
            if (treeBool)
                return RedirectToAction("CreatedIndex", "Home");
            else
                return RedirectToAction("MoreInfo", "Home");*/
        }
    }
}