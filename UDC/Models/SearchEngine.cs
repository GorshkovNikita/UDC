using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Linq;

namespace UDC.Models
{
    public class SearchEngine
    {
        public static List<Index> SearchBy (int by, string index, string name)
        {
            switch (by)
            {
                // same
                case 1:
                    if ((index != "") && (name != ""))
                        return UDCData.DB.ExecuteQuery<Index>("SELECT * FROM [dbo].[Index] WHERE ((Value LIKE '" + index + "') AND (Name LIKE '" + name + "'))").ToList();
                    else if (index == "")
                        return UDCData.DB.ExecuteQuery<Index>("SELECT * FROM [dbo].[Index] WHERE (Name LIKE '" + name + "')").ToList();
                    else
                        return UDCData.DB.ExecuteQuery<Index>("SELECT * FROM [dbo].[Index] WHERE (Value LIKE '" + index + "')").ToList();
                // center part
                case 2:
                    if ((index != "") && (name != ""))
                        return UDCData.DB.ExecuteQuery<Index>("SELECT * FROM [dbo].[Index] WHERE ((Value LIKE '%" + index + "%') AND (Name LIKE '%" + name + "%'))").ToList();
                    else if (index == "")
                        return UDCData.DB.ExecuteQuery<Index>("SELECT * FROM [dbo].[Index] WHERE (Name LIKE '%" + name + "%')").ToList();
                    else
                        return UDCData.DB.ExecuteQuery<Index>("SELECT * FROM [dbo].[Index] WHERE (Value LIKE '%" + index + "%')").ToList();
                // left part   
                case 3:
                    if ((index != "") && (name != ""))
                        return UDCData.DB.ExecuteQuery<Index>("SELECT * FROM [dbo].[Index] WHERE ((Value LIKE '" + index + "%') AND (Name LIKE '" + name + "%'))").ToList();
                    else if (index == "")
                        return UDCData.DB.ExecuteQuery<Index>("SELECT * FROM [dbo].[Index] WHERE (Name LIKE '" + name + "%')").ToList();
                    else
                        return UDCData.DB.ExecuteQuery<Index>("SELECT * FROM [dbo].[Index] WHERE (Value LIKE '" + index + "%')").ToList();
                    
            }
            return null;
        }


        // SEARCH BY NAME
        public static List<Index> SearchByName(string str)
        {
            return UDCData.DB.Indexes.Where(index => index.Name.Contains(str)).ToList();
        }

        public static List<Index> SearchByIndexName(string index, string name)
        {
            return UDCData.DB.Indexes.Where(indx => indx.Name.Contains(name) && indx.Value.Contains(index)).ToList();
        }

        // SEARCH BY VALUE
        // 1
        public static List<Index> SearchByIndexSame(string str)
        {
            return UDCData.DB.ExecuteQuery<Index>("SELECT * FROM [dbo].[Index] WHERE Value LIKE str").ToList();
        }
        // 2
        public static List<Index> SearchByIndexLeftPart(string str)
        {
            return UDCData.DB.ExecuteQuery<Index>("SELECT * FROM [dbo].[Index] WHERE Value LIKE 'str%'").ToList();
        }
        // 3
        public static List<Index> SearchByIndexRightPart(string str)
        {
            return UDCData.DB.ExecuteQuery<Index>("SELECT * FROM [dbo].[Index] WHERE Value LIKE '%str'").ToList();
        }

       
        public static List<Index> SearchByIndex(string str)
        {
            return UDCData.DB.Indexes.Where(index => index.Value.Contains(str)).ToList();
        }
    }
}