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
            SpecialDeterminants = UDCData.GetAllSpecificDeterminants(id);
        }

        public IndexModel(Int32 id, string removed, string specialdet)
        {
            GetAllProperties(id);
            Removed = removed;
            SpecialDet = specialdet;
            SpecialDeterminants = UDCData.GetSpecialDeterminants(id);
        }

        private void GetAllProperties(int id)
        {
            Index = UDCData.GetIndex(id);
            Parent = UDCData.GetIndexParent(id);
            Children = UDCData.GetIndexChildren(id);
            Examples = UDCData.GetIndexExamples(id);
            Links = UDCData.GetIndexLinks(id);
            //SpecialDeterminants = UDCData.GetSpecialDeterminants(id);
            //SpecialDeterminants = UDCData.GetAllSpecificDeterminants(id);
            Comment = UDCData.GetComment(id);
            SubDivideAs = UDCData.GetSubDivideAs(id);
            SubDivideWith = UDCData.GetSubDivideWith(id);
        }

        public Index Index { get; private set; }
        public Index Parent { get; private set; }
        public List<Index> Children { get; private set; }
        public List<Link> Links { get; private set; }
        public List<Example> Examples { get; private set; }
        public List<Index> SpecialDeterminants { get; private set; }
        public string Comment { get; private set; }
        public Index SubDivideAs { get; private set; }
        public string SubDivideWith { get; private set; }
        public string Removed { get; private set; }
        public string SpecialDet { get; private set; }
    }

    public class Example
    {
        public Example(int id, string type, String index, String name)
        {
            ID = id;
            Type = type;
            Index = index;
            Name = name;
        }

        public int ID { get; private set; }
        public string Type { get; private set; }
        public String Index { get; private set; }
        public String Name { get; private set; }
    }

    public class Link
    {
        public Link(int id, string type, String index, String name)
        {
            ID = id;
            Type = type;
            Index = index;
            Name = name;
        }

        public int ID { get; private set; }
        public string Type { get; private set; }
        public String Index { get; private set; }
        public String Name { get; private set; }
    }
}