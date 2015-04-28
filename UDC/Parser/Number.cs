using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace UDC.Parser
{
    public static class Number
    {
        public static bool isDigit(char c)
        {
            if (c == '0' || c == '1' || c == '2' || c == '3' || c == '4' || c == '5' || c == '6' || c == '7' || c == '8' || c == '9')
                return true;
            else
                return false;
        }
    }
}
