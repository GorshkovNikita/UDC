using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Linq;
using UDC.Models;

namespace UDC.Models
{
    public class UDCData
    {
        public static Index GetIndex(Int32 id)
        {
            return UDCData.DB.ExecuteQuery<Index>("SELECT TOP 1 * FROM [dbo].[Index] WHERE id = {0}", id).First();
        }

        public static Index GetIndexParent(Int32 id)
        {
            Index index = UDCData.GetIndex(id);
            if (index.ParentId != null)
                return UDCData.DB.ExecuteQuery<Index>("SELECT TOP 1 * FROM [dbo].[Index] WHERE id = {0}", index.ParentId).First();
            else
                return null;
        }

        public static List<Index> GetIndexChildren(Int32 id)
        {
            return UDCData.DB.ExecuteQuery<Index>("SELECT * FROM [dbo].[Index] WHERE ParentID = {0}", id).ToList();
        }

        public static List<CurrentIndex> AllCurrentIndex
        {
            get
            {
                return UDCData.DB.CurrentIndexes.ToList();
            }
        }

        public static List<Index> AllIndexes
        {
            get
            {
                return UDCData.DB.Indexes.ToList();
            }
        }

        public static List<Index> AllMainTableIndexes
        {
            get
            {
                return UDCData.DB.Indexes.Where(index => index.TableType == "MainIndex").ToList();
            }
        }

        public static UDCDataClassesDataContext DB
        {
            get
            {
                if (_db != null)
                    return _db;
                else
                {
                    _db = new UDCDataClassesDataContext();
                    return _db;
                }
            }
        }

        private static UDCDataClassesDataContext _db;
    }
}