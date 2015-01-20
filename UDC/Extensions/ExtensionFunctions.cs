using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UDC.Extensions
{
    public class ExtensionFunctions
    {
        public static Boolean CheckUDC(String stringUDC)
        {
            return true;
        }

        public static List<String> MainIndexParse(String mainIndex)
        {
            List<String> partsOfMainIndex = new List<String>(100);
            String parsingString = mainIndex;
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
                            partsOfMainIndex.Add(currentString);
                            i++;
                        }
                    }
                    else
                        partsOfMainIndex.Add(currentString);
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
                            partsOfMainIndex.Add(currentString);
                            i++;
                        }
                    }
                    else
                        partsOfMainIndex.Add(currentString);
                    currentString = "";
                    beforeSlash = "";
                }
                else if (currentSymbol == '/')
                {
                    partsOfMainIndex.Add(currentString);
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
                            if (partsOfMainIndex.Count == 0)
                            {
                                partsOfMainIndex.Add(currentString);
                            }
                            i++;
                        }
                    }
                    else
                    {
                        if (partsOfMainIndex.Count == 0)
                        {
                            partsOfMainIndex.Add(currentString);
                        }
                    }
                    currentString = "";
                }
            }
            return partsOfMainIndex;
        }

        public static String DeleteBrackets(String input)
        {
            if (input.Contains('(') && input.Contains(')'))
            {
                input = input.Remove(input.IndexOf('('), 1);
                input = input.Remove(input.IndexOf(')'), 1);
                return input;
            }
            else if (input.Contains('"'))
            {
                while (input.Contains('"'))
                {
                    input = input.Remove(input.IndexOf('"'), 1);
                }
                return input;
            }
            else
            {
                return input;
            }
        }
    }
}