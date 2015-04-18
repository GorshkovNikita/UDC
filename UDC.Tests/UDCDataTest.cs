using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using UDC;
using UDC.Models;

namespace UDC.Tests
{
    [TestClass]
    public class UDCDataTest
    {
        [TestMethod]
        public void GetIndexTest()
        {
            Int32 inID = 12;

            Index expectedIndex = new Index();
            expectedIndex.Id = 12;
            expectedIndex.Value = "101.1";
            expectedIndex.Name = "Природа философии. Философия как наука. Философия как искусство";
            expectedIndex.ParentId = 11;
            expectedIndex.IndexType = "Index";
            expectedIndex.TableType = "Main Table";

            Index actualIndex = UDCData.GetIndex(inID);

            Assert.AreEqual(expectedIndex.Id, actualIndex.Id, "IDs are not equal");
            Assert.AreEqual(expectedIndex.Value, actualIndex.Value, "Values are not equal");
            Assert.AreEqual(expectedIndex.Name, actualIndex.Name, "Names are not equal");
            Assert.AreEqual(expectedIndex.ParentId, actualIndex.ParentId, "ParentIDs are not equal");
            Assert.AreEqual(expectedIndex.IndexType, actualIndex.IndexType, "IndexTypes are not equal");
            Assert.AreEqual(expectedIndex.TableType, actualIndex.TableType, "TableTypes are not equal");
        }
    }
}
