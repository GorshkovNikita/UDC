using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UDC.Extensions
{
    public class UDCPart
    {
        public UDCPart()
        {
            _mainIndex = "";
            _placeIndex = "";
            _timeIndex = "";
            _nationIndex = "";
            _formIndex = "";
            _languageIndex = "";
            _signBetween = "";
            _partsOfMainIndex = new List<String>(100);
            _partsOfPlaceIndex = new List<String>(100);
            _partsOfTimeIndex = new List<String>(100);
            _partsOfNationIndex = new List<String>(100);
            _partsOfFormIndex = new List<String>(100);
            _partsOfLanguageIndex = new List<String>(100);
        }

        public void MainIndexParse()
        {
            String parsingString = _mainIndex;
            Char currentSymbol;
            String currentString = "";
            String beforeSlash = "";
            while (parsingString.Length != 0)
            {
                currentSymbol = parsingString[0];
                parsingString = parsingString.Remove(0, 1);
                if (currentSymbol == '[')
                {

                }
                else if (currentSymbol == ']')
                {
                    if (beforeSlash != "")
                    {
                        int idx = beforeSlash.LastIndexOf('.');
                        String firstPartBeforeSlash = beforeSlash.Remove(idx + 1);
                        String lastPartBeforeSlash = beforeSlash.Remove(0, idx + 1);
                        Int32 low = Convert.ToInt32(lastPartBeforeSlash);
                        if (currentString.Contains('.'))
                            currentString = currentString.Remove(currentString.IndexOf('.'), 1);
                        Int32 high = Convert.ToInt32(currentString);
                        Int32 i = low + 1;
                        while (i <= high)
                        {
                            currentString = String.Concat(firstPartBeforeSlash, i);
                            _partsOfMainIndex.Add(currentString);
                            i++;
                        }
                    }
                    else
                        _partsOfMainIndex.Add(currentString);
                    currentString = "";
                    beforeSlash = "";
                }
                else if (currentSymbol == '+')
                {
                    if (beforeSlash != "")
                    {
                        int idx = beforeSlash.LastIndexOf('.');
                        String firstPartBeforeSlash = beforeSlash.Remove(idx + 1);
                        String lastPartBeforeSlash = beforeSlash.Remove(0, idx + 1);
                        Int32 low = Convert.ToInt32(lastPartBeforeSlash);
                        if (currentString.Contains('.'))
                            currentString = currentString.Remove(currentString.IndexOf('.'), 1);
                        Int32 high = Convert.ToInt32(currentString);
                        Int32 i = low + 1;
                        while (i <= high)
                        {
                            currentString = String.Concat(firstPartBeforeSlash, i);
                            _partsOfMainIndex.Add(currentString);
                            i++;
                        }
                    }
                    else
                        _partsOfMainIndex.Add(currentString);
                    currentString = "";
                    beforeSlash = "";
                }
                else if (currentSymbol == '/')
                {
                    _partsOfMainIndex.Add(currentString);
                    beforeSlash = currentString;
                    currentString = "";
                }
                else
                {
                    currentString = String.Concat(currentString, currentSymbol);
                }
                if (parsingString.Length == 0)
                {
                    if (beforeSlash != "")
                    {
                        int idx = beforeSlash.LastIndexOf('.');
                        String firstPartBeforeSlash = beforeSlash.Remove(idx + 1);
                        String lastPartBeforeSlash = beforeSlash.Remove(0, idx + 1);
                        Int32 low = Convert.ToInt32(lastPartBeforeSlash);
                        if (currentString.Contains('.'))
                            currentString = currentString.Remove(currentString.IndexOf('.'), 1);
                        Int32 high = Convert.ToInt32(currentString);
                        Int32 i = low + 1;
                        while (i <= high)
                        {
                            currentString = String.Concat(firstPartBeforeSlash, i);
                            if (_partsOfMainIndex.Count == 0)
                            {
                                _partsOfMainIndex.Add(currentString);
                            }
                            i++;
                        }
                    }
                    else
                    {
                        if (_partsOfMainIndex.Count == 0)
                        {
                            _partsOfMainIndex.Add(currentString);
                        }
                    }
                    currentString = "";
                }
            }
        }

        public void LanguageIndexParse()
        {
            String parsingString = _languageIndex;
            Char currentSymbol;
            String currentString = "";
            String subString = "";
            while (parsingString.Length != 0)
            {
                currentSymbol = parsingString[0];
                parsingString = parsingString.Remove(0, 1);
                if (currentSymbol == '[')
                {

                }
                else if (currentSymbol == ']')
                {
                    _partsOfLanguageIndex.Add(currentString);
                    currentString = "";
                }
                else if (currentSymbol == '=')
                {
                    if (currentString != "")
                    {
                        _partsOfLanguageIndex.Add(currentString);
                        currentString = "";
                    }
                    if (parsingString.Length >= 3)
                        subString = String.Concat(parsingString[0], parsingString[1], parsingString[2]);
                    currentString = String.Concat(currentString, currentSymbol);
                    if (subString == "03.")
                    {
                        parsingString = parsingString.Remove(0, 3);
                        currentString = String.Concat(currentString, subString);
                    }
                }
                else
                {
                    currentString = String.Concat(currentString, currentSymbol);
                }
                if (parsingString.Length == 0)
                {
                    _partsOfLanguageIndex.Add(currentString);
                    currentString = "";
                }
            }
        }

        public void PlaceIndexParse()
        {
            String parsingString = _placeIndex;
            Char currentSymbol;
            String currentString = "";
            String beforeSlash = "";
            while (parsingString.Length != 0)
            {
                currentSymbol = parsingString[0];
                parsingString = parsingString.Remove(0, 1);
                if (currentSymbol == '(')
                {

                }
                else if (currentSymbol == ')')
                {
                    if (beforeSlash != "")
                    {
                        if (!beforeSlash.Contains('.'))
                        {
                            Int32 low = Convert.ToInt32(beforeSlash);
                            Int32 high = Convert.ToInt32(currentString);
                            Int32 i = low;
                            while (i <= high)
                            {
                                _partsOfPlaceIndex.Add(Convert.ToString(i));
                                i++;
                            }
                            beforeSlash = "";
                        }
                        else
                        {
                            int idx = beforeSlash.LastIndexOf('.');
                            String firstPartBeforeSlash = beforeSlash.Remove(idx + 1);
                            String lastPartBeforeSlash = beforeSlash.Remove(0, idx + 1);
                            Int32 low = Convert.ToInt32(lastPartBeforeSlash);
                            if (currentString.Contains('.'))
                                currentString = currentString.Remove(currentString.IndexOf('.'), 1);
                            Int32 high = Convert.ToInt32(currentString);
                            Int32 i = low;
                            while (i <= high)
                            {
                                currentString = String.Concat(firstPartBeforeSlash, i);
                                _partsOfPlaceIndex.Add(currentString);
                                i++;
                            }
                            beforeSlash = "";
                        }
                    }
                    else
                    {
                        _partsOfPlaceIndex.Add(currentString);
                    }
                    currentString = "";
                }
                else if (currentSymbol == '+')
                {
                    if (beforeSlash != "")
                    {
                        if (!beforeSlash.Contains('.'))
                        {
                            Int32 low = Convert.ToInt32(beforeSlash);
                            Int32 high = Convert.ToInt32(currentString);
                            Int32 i = low;
                            while (i <= high)
                            {
                                _partsOfPlaceIndex.Add(Convert.ToString(i));
                                i++;
                            }
                            beforeSlash = "";
                        }
                        else
                        {
                            int idx = beforeSlash.LastIndexOf('.');
                            String firstPartBeforeSlash = beforeSlash.Remove(idx + 1);
                            String lastPartBeforeSlash = beforeSlash.Remove(0, idx + 1);
                            Int32 low = Convert.ToInt32(lastPartBeforeSlash);
                            if (currentString.Contains('.'))
                                currentString = currentString.Remove(currentString.IndexOf('.'), 1);
                            Int32 high = Convert.ToInt32(currentString);
                            Int32 i = low;
                            while (i <= high)
                            {
                                currentString = String.Concat(firstPartBeforeSlash, i);
                                _partsOfPlaceIndex.Add(currentString);
                                i++;
                            }
                            beforeSlash = "";
                        }
                    }
                    else
                    {
                        _partsOfPlaceIndex.Add(currentString);
                    }
                    currentString = "";
                }
                else if (currentSymbol == '/')
                {
                    beforeSlash = currentString;
                    currentString = "";
                }
                else
                {
                    currentString = String.Concat(currentString, currentSymbol);
                }
            }
        }

        public void TimeIndexParse()
        {
            String parsingString = _timeIndex;
            Char currentSymbol;
            String currentString = "";
        }

        public void NationIndexParse()
        {
            String parsingString = _nationIndex;
            Char currentSymbol;
            String currentString = "";
        }

        public void FormIndexParse()
        {
            String parsingString = _formIndex;
            Char currentSymbol;
            String currentString = "";
        }

        public void MainIndexAdd(String str)
        {
            _mainIndex = str;
        }

        public void PlaceIndexAdd(String str)
        {
            _placeIndex = str;
        }

        public void TimeIndexAdd(String str)
        {
            _timeIndex = str;
        }

        public void NationIndexAdd(String str)
        {
            _nationIndex = str;
        }

        public void FormIndexAdd(String str)
        {
            _formIndex = str;
        }

        public void LanguageIndexAdd(String str)
        {
            _languageIndex = str;
        }

        public void SignBetweenAdd(String str)
        {
            _signBetween = str;
        }

        public String GetMainIndex()
        {
            return _mainIndex;
        }

        public String GetPlaceIndex()
        {
            return _placeIndex;
        }

        public String GetTimeIndex()
        {
            return _timeIndex;
        }

        public String GetNationIndex()
        {
            return _nationIndex;
        }

        public String GetFormIndex()
        {
            return _formIndex;
        }

        public String GetLanguageIndex()
        {
            return _languageIndex;
        }

        public String GetSignBetween()
        {
            return _signBetween;
        }

        public List<String> GetPartsOfMainIndex()
        {
            return _partsOfMainIndex;
        }

        public List<String> GetPartsOfPlaceIndex()
        {
            return _partsOfPlaceIndex;
        }

        public List<String> GetPartsOfTimeIndex()
        {
            return _partsOfTimeIndex;
        }

        public List<String> GetPartsOfNationIndex()
        {
            return _partsOfNationIndex;
        }

        public List<String> GetPartsOfFormIndex()
        {
            return _partsOfFormIndex;
        }

        public List<String> GetPartsOfLanguageIndex()
        {
            return _partsOfLanguageIndex;
        }

        private String _mainIndex;
        private List<String> _partsOfMainIndex;
        private String _placeIndex;
        private List<String> _partsOfPlaceIndex;
        private String _timeIndex;
        private List<String> _partsOfTimeIndex;
        private String _nationIndex;
        private List<String> _partsOfNationIndex;
        private String _formIndex;
        private List<String> _partsOfFormIndex;
        private String _languageIndex;
        private List<String> _partsOfLanguageIndex;
        private String _signBetween;
    }
}