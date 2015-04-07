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
            _examples = UDCData.GetIndexExamples(id);
            _links = UDCData.GetIndexLinks(id);
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

        public List<Link> Links
        {
            get
            {
                return _links;
            }
        }

        public List<Example> Examples
        {
            get
            {
                return _examples;
            }
        }

        private Index _index;
        private Index _parent;
        private List<Index> _children;
        private List<Example> _examples;
        private List<Link> _links;
    }

    public class Example
    {
        public Example(String index, String name)
        {
            _index = index;
            _name = name;
        }

        public String Index
        {
            get
            {
                return _index;
            }
        }

        public String Name
        {
            get
            {
                return _name;
            }
        }

        private String _index;
        private String _name;
    }

    public class Link
    {
        public Link(String index, String name)
        {
            _index = index;
            _name = name;
        }

        public String Index
        {
            get
            {
                return _index;
            }
        }

        public String Name
        {
            get
            {
                return _name;
            }
        }

        private String _index;
        private String _name;
    }
}