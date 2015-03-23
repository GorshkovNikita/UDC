using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using UDC.Models;

namespace UDC.Models
{
    public class ModelForView
    {
        public ModelForView(List<Index> indexList, Int32 parentId)
        {
            IndexList = indexList;
            ParentId = parentId;
        }

        public List<Index> IndexList { get; private set; }
        public Int32 ParentId { get; private set; }
    }
}