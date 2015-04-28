using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace UDC.Parser
{
    public static class TransformerBeforeParsing
    {
        public static string TreatSlash(string str)
        {
            string firstStr = str;
            int i = 0;
            while(i < str.Length)
            {
                if (str[i] == '/')
                {
                    int j = i+1;
                    if (str[j] == '.')
                        j++;

                    while (j != str.Length && IsNumber(str[j]))
                        j++;

                 
                    bool flagErrorSlash = false;
                    if (i - (j - i) + 1 <= 0)
                        flagErrorSlash = true;
                    if (str[i + 1] == '.')
                        if (!(str[i - (j - i) + 1] == '.'))
                            flagErrorSlash = true;

                    int s = -1;
                    if (str[i + 1] == '.')
                        s = i - (j - i) + 2;
                    else
                        s = i - (j - i) + 1;

                    for (int k = i-1; k >= s; k-- )
                        if (!IsNumber(str[k]))
                            flagErrorSlash = true;

                    str = str.Insert(j, "_");
                    str = str.Insert(i - (j - i) + 1, "_");

                    if (str[j] != '.' || str[i - (j - i) + 1] != '.')
                        flagErrorSlash = true;

                    if (flagErrorSlash == true)
                    {
                        //MessageBox.Show("Ошибка при выделении знака распространения /");
                        return firstStr;
                    }

                    i = j;
                }
                i++;
            }

            return str;
        }


        public static string TreatplacesspecialDeterminant2(string str)    // .0   => SpecialDeterminant2.0
        {
            int i = 0;
            while(i < str.Length-2)
            {
                if (str[i] == '.' && str[i + 1] == '0' && charIs1_9(str[i + 2]) == true)
                {
                    str = str.Insert(i, "SpecialAuxiliary2");
                    i += "SpecialAuxiliary2".Length;
                }
                i++;
            }

            return str;
        }

        public static bool charIs1_9(char c)
        {
            if (c == '1' || c == '2' || c == '3' || c == '4' || c == '5' || c == '6' || c == '7' || c == '8' || c == '9')
                return true;
            else
                return false;
        }


        public static string Transform(string str)
        {
            //str = TreatSlash(str);
            str = TreatplacesspecialDeterminant2(str);
            return str;
        }


        public static bool IsNumber(char c)
        {
            if(c == '0' || c == '1' || c == '2' || c == '3' || c == '4' || c == '5' || c == '6' || c == '7' || c == '8' || c == '9')
                return true;
            else
                return false;
        }
    }
}
