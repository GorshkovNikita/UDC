using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UDC.Models
{
    public class IndexModel
    {
        public IndexModel(Int32 id)
        {
            _index = UDCData.GetIndex(id);
            _parent = UDCData.GetIndexParent(id);
            _children = UDCData.GetIndexChildren(id);
        }

        public Index Index
        {
            get
            {
                return _index;
            }
        }

        public Index Parent
        {
            get
            {
                return _parent;
            }
        }

        public List<Index> Children
        {
            get
            {
                return _children;
            }
        }

        private Index _index;
        private Index _parent;
        private List<Index> _children;
    }
}