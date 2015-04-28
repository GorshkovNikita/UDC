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
            GetAllProperties(id);
        }

        public IndexModel(Int32 id, string removed, string specialdet)
        {
            GetAllProperties(id);
            Removed = removed;
            SpecialDet = specialdet;
        }

        private void GetAllProperties(int id)
        {
            Index = UDCData.GetIndex(id);
            Parent = UDCData.GetIndexParent(id);
            Children = UDCData.GetIndexChildren(id);
            Examples = UDCData.GetIndexExamples(id);
            Links = UDCData.GetIndexLinks(id);
            SpecialDeterminants = UDCData.GetSpecialDeterminants(id);
            Comment = UDCData.GetComment(id);
            SubDivideAs = UDCData.GetSubDivideAs(id);
        }

        public Index Index { get; private set; }
        public Index Parent { get; private set; }
        public List<Index> Children { get; private set; }
        public List<Link> Links { get; private set; }
        public List<Example> Examples { get; private set; }
        public List<Index> SpecialDeterminants { get; private set; }
        public string Comment { get; private set; }
        public Index SubDivideAs { get; private set; }
        public string Removed { get; private set; }
        public string SpecialDet { get; private set; }
    }

    public class Example
    {
        public Example(String index, String name)
        {
            Index = index;
            Name = name;
        }

        public String Index { get; private set; }
        public String Name { get; private set; }
    }

    public class Link
    {
        public Link(String index, String name)
        {
            Index = index;
            Name = name;
        }

        public String Index { get; private set; }
        public String Name { get; private set; }
    }
}