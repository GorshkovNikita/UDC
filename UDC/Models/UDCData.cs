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

        public static CompositeIndex GetCompositeIndex(Int32 id)
        {
            return UDCData.DB.ExecuteQuery<CompositeIndex>("SELECT TOP 1 * FROM [dbo].[CompositeIndex] WHERE id = {0}", id).First();
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

        public static List<Example> GetIndexExamples(Int32 id)
        {
            List<Example> examples = new List<Example>();
            List<Reference> refs = UDCData.DB.ExecuteQuery<Reference>("SELECT * FROM [dbo].[Reference] WHERE FromId = {0} AND RefType = {1}", id, "Example").ToList();
            foreach (var refer in refs)
            {
                //if (refer.ToId != null)
                if (refer.ToId < 3600 && refer.ToId != null)
                {
                    Index tmpIndex = UDCData.GetIndex((int)refer.ToId);
                    examples.Add(new Example(tmpIndex.Value, tmpIndex.Name));
                }
                else if (refer.ToCompIndexId != null)
                {
                    CompositeIndex tempCompIndex = UDCData.GetCompositeIndex((int)refer.ToCompIndexId);
                    // в БД перепутаны названия столбцов, поэтому в конструктор Link передаем наоборот
                    examples.Add(new Example(tempCompIndex.Name, tempCompIndex.Value));
                }
            }
            return examples;
        }

        public static List<Link> GetIndexLinks(Int32 id)
        {
            List<Link> links = new List<Link>();
            List<Reference> refs = UDCData.DB.ExecuteQuery<Reference>("SELECT * FROM [dbo].[Reference] WHERE FromId = {0} AND RefType = {1}", id, "Link").ToList();
            foreach (var refer in refs)
            {
                //if (refer.ToId != null)
                if (refer.ToId < 3600 && refer.ToId != null)
                {
                    Index tmpIndex = UDCData.GetIndex((int) refer.ToId);
                    links.Add(new Link(tmpIndex.Value, tmpIndex.Name));
                }
                else if (refer.ToCompIndexId != null)
                {
                    CompositeIndex tempCompIndex = UDCData.GetCompositeIndex((int) refer.ToCompIndexId);
                    // в БД перепутаны названия столбцов, поэтому в конструктор Link передаем наоборот
                    links.Add(new Link(tempCompIndex.Name, tempCompIndex.Value));
                }
            }
            return links;
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
                return UDCData.DB.Indexes.Where(index => index.TableType == "MainIndex")
                    .Where(index => index.IndexType == "Index")
                    .Where(index => index.Removed == false)
                    .Where(index => index.isGroupIndex == false).ToList();
            }
        }

        public static List<Index> TimeDeterminantIndexes
        {
            get
            {
                return UDCData.DB.Indexes.Where(index => index.TableType == "Ig.xml").ToList(); 
            }
        }

        public static List<Index> LanguageDeterminantIndexes
        {
            get
            {
                return UDCData.DB.Indexes.Where(index => index.TableType == "Ic.xml").ToList();
            }
        }

        public static List<Index> NationDeterminantIndexes
        {
            get
            {
                return UDCData.DB.Indexes.Where(index => index.TableType == "If.xml").ToList();
            }
        }

        public static List<Index> PlaceDeterminantIndexes
        {
            get
            {
                return UDCData.DB.Indexes.Where(index => index.TableType == "Ie.xml").ToList();
            }
        }

        public static List<Index> FormDeterminantIndexes
        {
            get
            {
                return UDCData.DB.Indexes.Where(index => index.TableType == "Id.xml").ToList();
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
            set { _db = value; }
        }

        private static UDCDataClassesDataContext _db;
    }
}