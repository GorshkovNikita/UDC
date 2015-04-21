using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using UDC;
using UDC.Models;
using System.Collections.Generic;

namespace UDC.Tests
{
    [TestClass]
    public class UDCDataTest
    {
        [TestInitialize]
        public void CreateDataContext()
        {
            UDCData.DB = new UDCDataClassesDataContext("Data Source=NIKITA-LENOVO;Initial Catalog=DBLibUDC_21_01;Integrated Security=True");
        }

        [TestMethod]
        public void GetIndexIDTest()
        {
            Int32 inID = 12;
            Index expectedIndex = new Index();
            expectedIndex.Id = 12;

            Index actualIndex = UDCData.GetIndex(inID);

            Assert.AreEqual(expectedIndex.Id, actualIndex.Id, "IDs are not equal");
        }

        [TestMethod]
        public void GetIndexValueTest()
        {
            Int32 inID = 12;
            Index expectedIndex = new Index();
            expectedIndex.Id = 12;
            expectedIndex.Value = "101.1";

            Index actualIndex = UDCData.GetIndex(inID);

            Assert.AreEqual(expectedIndex.Value, actualIndex.Value, "Values are not equal");
        }

        [TestMethod]
        public void GetIndexNameTest()
        {
            Int32 inID = 12;
            Index expectedIndex = new Index();
            expectedIndex.Name = "Природа философии. Философия как наука. Философия как искусство";

            Index actualIndex = UDCData.GetIndex(inID);

            Assert.AreEqual(expectedIndex.Name, actualIndex.Name, "Names are not equal");
        }

        [TestMethod]
        public void GetIndexParenIDTest()
        {
            Int32 inID = 12;
            Index expectedIndex = new Index();
            expectedIndex.ParentId = 11;

            Index actualIndex = UDCData.GetIndex(inID);

            Assert.AreEqual(expectedIndex.ParentId, actualIndex.ParentId, "ParentIDs are not equal");
        }

        [TestMethod]
        public void GetIndexIndexTypeTest()
        {
            Int32 inID = 12;
            Index expectedIndex = new Index();
            expectedIndex.IndexType = "Index";

            Index actualIndex = UDCData.GetIndex(inID);

            Assert.AreEqual(expectedIndex.IndexType, actualIndex.IndexType, "IndexTypes are not equal");
        }

        [TestMethod]
        public void GetIndexTabeTypeTest()
        {
            Int32 inID = 12;
            Index expectedIndex = new Index();
            expectedIndex.TableType = "MainIndex";

            Index actualIndex = UDCData.GetIndex(inID);

            Assert.AreEqual(expectedIndex.TableType, actualIndex.TableType, "TableTypes are not equal");
        }

        [TestMethod]
        public void GetCompositeIndexIDTest()
        {
            Int32 inID = 12;
            CompositeIndex expectedCompositeIndex = new CompositeIndex();
            expectedCompositeIndex.Id = 12;

            CompositeIndex actualCompositeIndex = UDCData.GetCompositeIndex(inID);

            Assert.AreEqual(expectedCompositeIndex.Id, actualCompositeIndex.Id, "IDs are not equal");
        }

        [TestMethod]
        public void GetCompositeIndexNameTest()
        {
            Int32 inID = 12;
            CompositeIndex expectedCompositeIndex = new CompositeIndex();
            expectedCompositeIndex.Value = "Дети с повседневными проблемами";

            CompositeIndex actualCompositeIndex = UDCData.GetCompositeIndex(inID);

            Assert.AreEqual(expectedCompositeIndex.Value, actualCompositeIndex.Value, "Names are not equal");
        }

        [TestMethod]
        public void GetCompositeIndexValueTest()
        {
            Int32 inID = 12;
            CompositeIndex expectedCompositeIndex = new CompositeIndex();
            expectedCompositeIndex.Name = "159.922.76-056.49";

            CompositeIndex actualCompositeIndex = UDCData.GetCompositeIndex(inID);

            Assert.AreEqual(expectedCompositeIndex.Name, actualCompositeIndex.Name, "Values are not equal");
        }

        [TestMethod]
        public void GetIndexParentIDTest()
        {
            Int32 inID = 12;
            Index expectedParentIndex = new Index();
            expectedParentIndex.Id = 11;

            Index actualCompositeIndex = UDCData.GetIndexParent(inID);

            Assert.AreEqual(expectedParentIndex.Id, actualCompositeIndex.Id, "IDs are not equal");
        }

        [TestMethod]
        public void GetIndexParentValueTest()
        {
            Int32 inID = 12;
            Index expectedParentIndex = new Index();
            expectedParentIndex.Value = "101";

            Index actualParentIndex = UDCData.GetIndexParent(inID);

            Assert.AreEqual(expectedParentIndex.Value, actualParentIndex.Value, "Values are not equal");
        }

        [TestMethod]
        public void GetIndexParentNameTest()
        {
            Int32 inID = 12;
            Index expectedParentIndex = new Index();
            expectedParentIndex.Name = "Природа и роль философии";

            Index actualParentIndex = UDCData.GetIndexParent(inID);

            Assert.AreEqual(expectedParentIndex.Name, actualParentIndex.Name, "Names are not equal");
        }

        [TestMethod]
        public void GetIndexChildrenCountTest()
        {
            Int32 inID = 11;
            List<Index> expectedIndexChildren = new List<Index>();
            expectedIndexChildren.Add(new Index() { Id = 12} );
            expectedIndexChildren.Add(new Index() { Id = 13 });
            expectedIndexChildren.Add(new Index() { Id = 14 });
            expectedIndexChildren.Add(new Index() { Id = 15 });
            expectedIndexChildren.Add(new Index() { Id = 16 });

            List<Index> actualIndexChildren = UDCData.GetIndexChildren(inID);

            Assert.AreEqual(expectedIndexChildren.Count, actualIndexChildren.Count, "Counts are not equal");
        }

        [TestMethod]
        public void GetIndexChildrenIDTest()
        {
            Int32 inID = 11;
            List<Index> expectedIndexChildren = new List<Index>();
            expectedIndexChildren.Add(new Index() { Id = 12 });
            expectedIndexChildren.Add(new Index() { Id = 13 });
            expectedIndexChildren.Add(new Index() { Id = 14 });
            expectedIndexChildren.Add(new Index() { Id = 15 });
            expectedIndexChildren.Add(new Index() { Id = 16 });

            List<Index> actualIndexChildren = UDCData.GetIndexChildren(inID);

            Assert.AreEqual(expectedIndexChildren[0].Id, actualIndexChildren[0].Id, "IDs are not equal");
            Assert.AreEqual(expectedIndexChildren[1].Id, actualIndexChildren[1].Id, "IDs are not equal");
            Assert.AreEqual(expectedIndexChildren[2].Id, actualIndexChildren[2].Id, "IDs are not equal");
            Assert.AreEqual(expectedIndexChildren[3].Id, actualIndexChildren[3].Id, "IDs are not equal");
            Assert.AreEqual(expectedIndexChildren[4].Id, actualIndexChildren[4].Id, "IDs are not equal");
        }

        [TestMethod]
        public void GetIndexChildrenValueTest()
        {
            Int32 inID = 11;
            List<Index> expectedIndexChildren = new List<Index>();
            expectedIndexChildren.Add(new Index() { Value = "101.1" });
            expectedIndexChildren.Add(new Index() { Value = "101.2" });
            expectedIndexChildren.Add(new Index() { Value = "101.3" });
            expectedIndexChildren.Add(new Index() { Value = "101.8" });
            expectedIndexChildren.Add(new Index() { Value = "101.9" });

            List<Index> actualIndexChildren = UDCData.GetIndexChildren(inID);

            Assert.AreEqual(expectedIndexChildren[0].Value, actualIndexChildren[0].Value, "Values are not equal");
            Assert.AreEqual(expectedIndexChildren[1].Value, actualIndexChildren[1].Value, "Values are not equal");
            Assert.AreEqual(expectedIndexChildren[2].Value, actualIndexChildren[2].Value, "Values are not equal");
            Assert.AreEqual(expectedIndexChildren[3].Value, actualIndexChildren[3].Value, "Values are not equal");
            Assert.AreEqual(expectedIndexChildren[4].Value, actualIndexChildren[4].Value, "Values are not equal");
        }

        [TestMethod]
        public void GetIndexChildrenNameTest()
        {
            Int32 inID = 11;
            List<Index> expectedIndexChildren = new List<Index>();
            expectedIndexChildren.Add(new Index() { Name = "Природа философии. Философия как наука. Философия как искусство" });
            expectedIndexChildren.Add(new Index() { Name = "Возможность философии. Возможна ли философия?" });
            expectedIndexChildren.Add(new Index() { Name = "Предметный охват и границы философии" });
            expectedIndexChildren.Add(new Index() { Name = "Философские методы. Методы философствования" });
            expectedIndexChildren.Add(new Index() { Name = "Личность и призвание (назначение) философа" });

            List<Index> actualIndexChildren = UDCData.GetIndexChildren(inID);

            Assert.AreEqual(expectedIndexChildren[0].Name, actualIndexChildren[0].Name, "Names are not equal");
            Assert.AreEqual(expectedIndexChildren[1].Name, actualIndexChildren[1].Name, "Names are not equal");
            Assert.AreEqual(expectedIndexChildren[2].Name, actualIndexChildren[2].Name, "Names are not equal");
            Assert.AreEqual(expectedIndexChildren[3].Name, actualIndexChildren[3].Name, "Names are not equal");
            Assert.AreEqual(expectedIndexChildren[4].Name, actualIndexChildren[4].Name, "Names are not equal");
        }

        [TestMethod]
        public void GetIndexExampleTest()
        {
            Int32 inID = 194;
            List<Example> expectedIndexExamples = new List<Example>();
            expectedIndexExamples.Add(new Example("159.947", "Волевые процессы. Воля"));

            List<Example> actualIndexExamples = UDCData.GetIndexExamples(inID);

            Assert.AreEqual(expectedIndexExamples[0].Index, actualIndexExamples[0].Index, "Indexes are not equal");
            Assert.AreEqual(expectedIndexExamples[0].Name, actualIndexExamples[0].Name, "Names are not equal");
        }

        [TestMethod]
        public void GetIndexLinkTest()
        {
            Int32 inID = 42;
            List<Link> expectedIndexLinks = new List<Link>();
            expectedIndexLinks.Add(new Link("141.33", "Философский мистицизм"));
            expectedIndexLinks.Add(new Link("159.961", "Парапсихология. Психические явления и исследования. Галлюцинации. Иллюзии. Видения. Привидения"));

            List<Link> actualIndexLinks = UDCData.GetIndexLinks(inID);

            Assert.AreEqual(expectedIndexLinks[0].Index, actualIndexLinks[0].Index, "Indexes are not equal");
            Assert.AreEqual(expectedIndexLinks[0].Name, actualIndexLinks[0].Name, "Names are not equal");
        }

        [TestCleanup]
        public void DeleteDataContext()
        {
            UDCData.DB = null;
        }
    }
}
