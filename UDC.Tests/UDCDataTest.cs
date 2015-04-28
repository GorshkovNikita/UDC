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
        private int inID = 1805;

        [TestMethod]
        public void GetIndexIDTest()
        {
            Index expectedIndex = new Index();
            expectedIndex.Id = 1805;

            Index actualIndex = UDCData.GetIndex(inID);

            Assert.AreEqual(expectedIndex.Id, actualIndex.Id, "IDs are not equal");
        }

        [TestMethod]
        public void GetIndexValueTest()
        {
            Index expectedIndex = new Index();
            expectedIndex.Id = 1805;
            expectedIndex.Value = "101.1";

            Index actualIndex = UDCData.GetIndex(inID);

            Assert.AreEqual(expectedIndex.Value, actualIndex.Value, "Values are not equal");
        }

        [TestMethod]
        public void GetIndexNameTest()
        {
            Index expectedIndex = new Index();
            expectedIndex.Name = "Природа философии. Философия как наука. Философия как искусство";

            Index actualIndex = UDCData.GetIndex(inID);

            Assert.AreEqual(expectedIndex.Name, actualIndex.Name, "Names are not equal");
        }

        [TestMethod]
        public void GetIndexParenIDTest()
        {
            Index expectedIndex = new Index();
            expectedIndex.ParentId = 1804;

            Index actualIndex = UDCData.GetIndex(inID);

            Assert.AreEqual(expectedIndex.ParentId, actualIndex.ParentId, "ParentIDs are not equal");
        }

        [TestMethod]
        public void GetIndexIndexTypeTest()
        {
            Index expectedIndex = new Index();
            expectedIndex.IndexType = "Index";

            Index actualIndex = UDCData.GetIndex(inID);

            Assert.AreEqual(expectedIndex.IndexType, actualIndex.IndexType, "IndexTypes are not equal");
        }

        [TestMethod]
        public void GetIndexTabeTypeTest()
        {
            Index expectedIndex = new Index();
            expectedIndex.TableType = "MainIndex";

            Index actualIndex = UDCData.GetIndex(inID);

            Assert.AreEqual(expectedIndex.TableType, actualIndex.TableType, "TableTypes are not equal");
        }

        [TestMethod]
        public void GetCompositeIndexIDTest()
        {
            CompositeIndex expectedCompositeIndex = new CompositeIndex();
            expectedCompositeIndex.Id = 1805;

            CompositeIndex actualCompositeIndex = UDCData.GetCompositeIndex(inID);

            Assert.AreEqual(expectedCompositeIndex.Id, actualCompositeIndex.Id, "IDs are not equal");
        }

        [TestMethod]
        public void GetCompositeIndexNameTest()
        {
            CompositeIndex expectedCompositeIndex = new CompositeIndex();
            expectedCompositeIndex.Value = "Ртутные термометры для измерения и индикации малых температурных различий. Термометр бекмана";

            CompositeIndex actualCompositeIndex = UDCData.GetCompositeIndex(inID);

            Assert.AreEqual(expectedCompositeIndex.Value, actualCompositeIndex.Value, "Names are not equal");
        }

        [TestMethod]
        public void GetCompositeIndexValueTest()
        {
            CompositeIndex expectedCompositeIndex = new CompositeIndex();
            expectedCompositeIndex.Name = "536.51.083.62";

            CompositeIndex actualCompositeIndex = UDCData.GetCompositeIndex(inID);

            Assert.AreEqual(expectedCompositeIndex.Name, actualCompositeIndex.Name, "Values are not equal");
        }

        [TestMethod]
        public void GetIndexParentIDTest()
        {
            Index expectedParentIndex = new Index();
            expectedParentIndex.Id = 1804;

            Index actualCompositeIndex = UDCData.GetIndexParent(inID);

            Assert.AreEqual(expectedParentIndex.Id, actualCompositeIndex.Id, "IDs are not equal");
        }

        [TestMethod]
        public void GetIndexParentValueTest()
        {
            Index expectedParentIndex = new Index();
            expectedParentIndex.Value = "101";

            Index actualParentIndex = UDCData.GetIndexParent(inID);

            Assert.AreEqual(expectedParentIndex.Value, actualParentIndex.Value, "Values are not equal");
        }

        [TestMethod]
        public void GetIndexParentNameTest()
        {
            Index expectedParentIndex = new Index();
            expectedParentIndex.Name = "Природа и роль философии";

            Index actualParentIndex = UDCData.GetIndexParent(inID);

            Assert.AreEqual(expectedParentIndex.Name, actualParentIndex.Name, "Names are not equal");
        }

        [TestMethod]
        public void GetIndexChildrenCountTest()
        {
            Int32 inID = 1;
            List<Index> expectedIndexChildren = new List<Index>();
            expectedIndexChildren.Add(new Index() { Id = 2 });
            expectedIndexChildren.Add(new Index() { Id = 71 });
            expectedIndexChildren.Add(new Index() { Id = 79 });
            expectedIndexChildren.Add(new Index() { Id = 233 });
            expectedIndexChildren.Add(new Index() { Id = 993 });
            expectedIndexChildren.Add(new Index() { Id = 994 });
            expectedIndexChildren.Add(new Index() { Id = 1099 });
            expectedIndexChildren.Add(new Index() { Id = 1105 });
            expectedIndexChildren.Add(new Index() { Id = 1107 });

            List<Index> actualIndexChildren = UDCData.GetIndexChildren(inID);

            Assert.AreEqual(expectedIndexChildren.Count, actualIndexChildren.Count, "Counts are not equal");
        }

        [TestMethod]
        public void GetIndexChildrenIDTest()
        {
            Int32 inID = 1;
            List<Index> expectedIndexChildren = new List<Index>();
            expectedIndexChildren.Add(new Index() { Id = 2 });
            expectedIndexChildren.Add(new Index() { Id = 71 });
            expectedIndexChildren.Add(new Index() { Id = 79 });
            expectedIndexChildren.Add(new Index() { Id = 233 });
            expectedIndexChildren.Add(new Index() { Id = 993 });
            expectedIndexChildren.Add(new Index() { Id = 994 });
            expectedIndexChildren.Add(new Index() { Id = 1099 });
            expectedIndexChildren.Add(new Index() { Id = 1105 });
            expectedIndexChildren.Add(new Index() { Id = 1107 });

            List<Index> actualIndexChildren = UDCData.GetIndexChildren(inID);

            Assert.AreEqual(expectedIndexChildren[0].Id, actualIndexChildren[0].Id, "IDs are not equal");
            Assert.AreEqual(expectedIndexChildren[1].Id, actualIndexChildren[1].Id, "IDs are not equal");
            Assert.AreEqual(expectedIndexChildren[2].Id, actualIndexChildren[2].Id, "IDs are not equal");
            Assert.AreEqual(expectedIndexChildren[3].Id, actualIndexChildren[3].Id, "IDs are not equal");
            Assert.AreEqual(expectedIndexChildren[4].Id, actualIndexChildren[4].Id, "IDs are not equal");
            Assert.AreEqual(expectedIndexChildren[5].Id, actualIndexChildren[5].Id, "IDs are not equal");
            Assert.AreEqual(expectedIndexChildren[6].Id, actualIndexChildren[6].Id, "IDs are not equal");
            Assert.AreEqual(expectedIndexChildren[7].Id, actualIndexChildren[7].Id, "IDs are not equal");
            Assert.AreEqual(expectedIndexChildren[8].Id, actualIndexChildren[8].Id, "IDs are not equal");
        }

        [TestMethod]
        public void GetIndexChildrenValueTest()
        {
            Int32 inID = 1;
            List<Index> expectedIndexChildren = new List<Index>();
            expectedIndexChildren.Add(new Index() { Value = "001" });
            expectedIndexChildren.Add(new Index() { Value = "002" });
            expectedIndexChildren.Add(new Index() { Value = "003" });
            expectedIndexChildren.Add(new Index() { Value = "004" });
            expectedIndexChildren.Add(new Index() { Value = "005" });
            expectedIndexChildren.Add(new Index() { Value = "006" });
            expectedIndexChildren.Add(new Index() { Value = "007" });
            expectedIndexChildren.Add(new Index() { Value = "008" });
            expectedIndexChildren.Add(new Index() { Value = "009" });

            List<Index> actualIndexChildren = UDCData.GetIndexChildren(inID);

            Assert.AreEqual(expectedIndexChildren[0].Value, actualIndexChildren[0].Value, "Values are not equal");
            Assert.AreEqual(expectedIndexChildren[1].Value, actualIndexChildren[1].Value, "Values are not equal");
            Assert.AreEqual(expectedIndexChildren[2].Value, actualIndexChildren[2].Value, "Values are not equal");
            Assert.AreEqual(expectedIndexChildren[3].Value, actualIndexChildren[3].Value, "Values are not equal");
            Assert.AreEqual(expectedIndexChildren[4].Value, actualIndexChildren[4].Value, "Values are not equal");
            Assert.AreEqual(expectedIndexChildren[5].Value, actualIndexChildren[5].Value, "Values are not equal");
            Assert.AreEqual(expectedIndexChildren[6].Value, actualIndexChildren[6].Value, "Values are not equal");
            Assert.AreEqual(expectedIndexChildren[7].Value, actualIndexChildren[7].Value, "Values are not equal");
            Assert.AreEqual(expectedIndexChildren[8].Value, actualIndexChildren[8].Value, "Values are not equal");
        }

        [TestMethod]
        public void GetIndexChildrenNameTest()
        {
            Int32 inID = 1;
            List<Index> expectedIndexChildren = new List<Index>();
            expectedIndexChildren.Add(new Index() { Name = "Наука и знание в целом. Организация умственного труда" });
            expectedIndexChildren.Add(new Index() { Name = "Документация. Научно-техническая информация (нти). Печать в целом. Авторство" });
            expectedIndexChildren.Add(new Index() { Name = "Системы письма и письменности. Знаки и символы. Семиотика в целом. Коды. Графическое представление мысли" });
            expectedIndexChildren.Add(new Index() { Name = "Информационные технологии. Вычислительная техника. Теория, технология и применение вычислительных машин и систем." });
            expectedIndexChildren.Add(new Index() { Name = "Изучение проблемы организации: методология, анализ, синтез, классификация и таксономия (теория, основы), систематизация в целом" });
            expectedIndexChildren.Add(new Index() { Name = "Стандартизация  продукции , процессов, мер, весов и времени. Стандарты. Технические требования. Нормы и правила. Рекомендации" });
            expectedIndexChildren.Add(new Index() { Name = "Деятельность и организация. Общая теория информации, связи и управления (кибернетика)" });
            expectedIndexChildren.Add(new Index() { Name = "Цивилизация. Культура. Прогресс" });
            expectedIndexChildren.Add(new Index() { Name = "Гуманитарные науки в целом" });


            List<Index> actualIndexChildren = UDCData.GetIndexChildren(inID);

            Assert.AreEqual(expectedIndexChildren[0].Name, actualIndexChildren[0].Name, "Names are not equal");
            Assert.AreEqual(expectedIndexChildren[1].Name, actualIndexChildren[1].Name, "Names are not equal");
            Assert.AreEqual(expectedIndexChildren[2].Name, actualIndexChildren[2].Name, "Names are not equal");
            Assert.AreEqual(expectedIndexChildren[3].Name, actualIndexChildren[3].Name, "Names are not equal");
            Assert.AreEqual(expectedIndexChildren[4].Name, actualIndexChildren[4].Name, "Names are not equal");
            Assert.AreEqual(expectedIndexChildren[5].Name, actualIndexChildren[5].Name, "Names are not equal");
            Assert.AreEqual(expectedIndexChildren[6].Name, actualIndexChildren[6].Name, "Names are not equal");
            Assert.AreEqual(expectedIndexChildren[7].Name, actualIndexChildren[7].Name, "Names are not equal");
            Assert.AreEqual(expectedIndexChildren[8].Name, actualIndexChildren[8].Name, "Names are not equal");
        }

        [TestMethod]
        public void GetIndexExampleTest()
        {
            Int32 inID = 30;
            List<Example> expectedIndexExamples = new List<Example>();
            expectedIndexExamples.Add(new Example(0, "CompositeIndex", "001.814.2:002", "Разыскание литературы"));
            expectedIndexExamples.Add(new Example(1, "CompositeIndex", "001.814.2:347.771", "Разыскание патентов"));

            List<Example> actualIndexExamples = UDCData.GetIndexExamples(inID);

            Assert.AreEqual(expectedIndexExamples[0].Index, actualIndexExamples[0].Index, "Indexes are not equal");
            Assert.AreEqual(expectedIndexExamples[0].Name, actualIndexExamples[0].Name, "Names are not equal");
        }

        [TestMethod]
        public void GetIndexLinkTest()
        {
            Int32 inID = 284;
            List<Link> expectedIndexLinks = new List<Link>();
            expectedIndexLinks.Add(new Link(930, "Index", "004.056.3", "Резервирование и восстановление данных"));
            expectedIndexLinks.Add(new Link(930, "Index", "004.056.4", "Избыточность"));

            List<Link> actualIndexLinks = UDCData.GetIndexLinks(inID);

            Assert.AreEqual(expectedIndexLinks[0].Index, actualIndexLinks[0].Index, "Indexes are not equal");
            Assert.AreEqual(expectedIndexLinks[0].Name, actualIndexLinks[0].Name, "Names are not equal");
        }
    }
}
