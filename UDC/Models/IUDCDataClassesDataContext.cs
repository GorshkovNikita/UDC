using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UDC.Models
{
    public interface IUDCDataClassesDataContext
    {
        System.Data.Linq.Table<Index> Indexes { get; }
    }
}