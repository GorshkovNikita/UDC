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
        public UDCData()
        {
            if (_db == null)
            {
                _db = new UDCDataClassesDataContext();
            }
        }

        public List<CurrentIndex> AllCurrentIndex
        {
            get
            {
                return _db.CurrentIndexes.ToList();
            }
        }

        public List<Index> AllIndexes
        {
            get
            {
                return _db.Indexes.ToList();
            }
        }

        public List<Index> AllMainTableIndexes
        {
            get
            {
                return _db.Indexes.Where(index => index.TableType == "MainIndex").ToList();
            }
        }

        public UDCDataClassesDataContext DB
        {
            get
            {
                return _db;
            }
        }

        private UDCDataClassesDataContext _db;
    }
}