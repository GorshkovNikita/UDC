using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using UDC;
using UDC.Models;

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

            Assert.AreEqual(expectedCompositeIndex.Value, actualCompositeIndex.Value, "Values are not equal");
        }

        [TestMethod]
        public void GetCompositeIndexValueTest()
        {
            Int32 inID = 12;
            CompositeIndex expectedCompositeIndex = new CompositeIndex();
            expectedCompositeIndex.Name = "159.922.76-056.49";

            CompositeIndex actualCompositeIndex = UDCData.GetCompositeIndex(inID);

            Assert.AreEqual(expectedCompositeIndex.Name, actualCompositeIndex.Name, "Names are not equal");
        }

        [TestCleanup]
        public void DeleteDataContext()
        {
            UDCData.DB = null;
        }
    }
}
