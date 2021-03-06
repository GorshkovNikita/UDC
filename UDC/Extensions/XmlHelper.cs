﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;
using System.Xml.Linq;

namespace UDC.Models
{
    public class XmlHelper
    {
        public static string ProcessXml(string xmlString)
        {
            XDocument doc = GetXml(xmlString);
            XElement subtree = doc.Root;
            ChangeXmlSubtree(subtree, 0);
            return GetString(doc);
        }

        public static XElement ChangeXmlSubtree(XElement subtree, int level)
        {
            level++;
            if (subtree.HasElements)
            {
                List<XElement> children = subtree.Elements().ToList();
                for (Int32 i = 0; i < children.Count; i++)
                {
                    XElement el = children[i];
                    if (i != 0)
                    {
                        if ((el.Name != children[i - 1].Name) && CheckTag(el))
                            el.AddBeforeSelf(new XElement("name", GetValurOfNameTag(el.Name)));
                    }
                    else
                        if (CheckTag(el))
                            el.AddBeforeSelf(new XElement("name", GetValurOfNameTag(el.Name)));
                    ChangeXmlSubtree(el, level);
                }
                List<XElement> indexElements = new List<XElement>();
                for (int i = 0; i < children.Count; i++)
                {
                    XElement el = children[i];
                    if (el.Name == "Index" || el.Name == "Plus" || el.Name == "Colon" || el.Name == "DoubleColon")
                    {
                        indexElements.Add(el);
                        if (indexElements.Count > 1)
                            el.AddBeforeSelf(new XElement("name", GetValurOfNameTag(el.Parent.Name)));
                    }
                }
            }
            else
            {
                Index index;
                if ((subtree.Parent.Name != "CommonAuxiliaryOfTime") && (subtree.Name != "CommonAuxiliaryOfTime"))
                {
                    index = UDCData.GetIndex(subtree.Value);
                }
                else
                {
                    index = UDCData.GetIndex('"' + subtree.Value + '"');
                }
                if (index != null)
                {
                    subtree.Value = "";
                    XElement el;
                    if ((index.TableType != "Ig.xml") || (subtree.Name == "CommonAuxiliaryOfTime"))
                    {
                        el = new XElement("a", index.Value);
                    }
                    else
                    {
                        string val = index.Value.Remove(0, 1);
                        val = val.Remove(val.Length - 1, 1);
                        el = new XElement("a", val);
                    }
                    el.SetAttributeValue("href", "http://localhost:51128/Home/MoreInfo?index=" + index.Id);
                    el.SetAttributeValue("target", "_blank");
                    subtree.Add(el);
                }
            }
            return subtree;
        }

        public static string GetValurOfNameTag(XName tagName)
        {
            if (tagName == "CommonAuxiliaryOfProperties")
                return "Общие определители свойств:";
            else if (tagName == "CommonAuxiliaryOfMaterials")
                return "Общие определители материалов:";
            else if (tagName == "CommonAuxiliaryOfRelations")
                return "Общие определители отношений:";
            else if (tagName == "CommonAuxiliaryOfPersons")
                return "Общие определители лиц:";
            else if (tagName == "SpecialAuxiliary1" || tagName == "SpecialAuxiliary2" || tagName == "SpecialAuxiliary3")
                return "Специальный определитель:";
            else if (tagName == "Colon")
                return ":";
            else if (tagName == "DoubleColon")
                return "::";
            else if (tagName == "Plus")
                return "+";
            else if (tagName == "CommonAuxiliaryOfTime")
                return "Общие определители времени:";
            else if (tagName == "Year" || tagName == "Year1" || tagName == "Year2" || tagName == "Year3")
                return "Год";
            else if (tagName == "Decade" || tagName == "Decade1" || tagName == "Decade2" || tagName == "Decade3")
                return "Десятилетие";
            else if (tagName == "Century" || tagName == "Century1" || tagName == "Century2" || tagName == "Century3")
                return "Век";
            else if (tagName == "Millenium" || tagName == "Millenium1" || tagName == "Millenium2" || tagName == "Millenium3")
                return "Тысячелетие";
            else if (tagName == "CommonAuxiliaryOfPlace") // || tagName == "SimpleCommonAuxiliaryOfPlace")
                return "Общие определители места:";
            else if (tagName == "CommonAuxiliaryOfForm") // || tagName == "SimpleCommonAuxiliaryOfForm")
                return "Общие определители формы документа:";
            else if (tagName == "CommonAuxiliaryOfHuman") // || tagName == "SimpleCommonAuxiliaryOfHuman")
                return "Общие определители рас, народов, этнических групп и национальностей:";
            else if (tagName == "SimpleIndex")
                return "Простой индекс основной таблицы:";
            else if (tagName == "Index")
                return "Индекс";
            else if (tagName == "From")
                return "От:";
            else if (tagName == "To")
                return "ДО:";
            else if (tagName == "CommonAuxiliaryOfLanguage")
                return "Общие определители языка:";
            else
                return "Какое-то другое название!!";
        }

        public static bool CheckTag(XElement el)
        {
            return (((el.Name.ToString().Substring(0, 2) != "Si") || (el.Name.ToString() == "SimpleIndex"))
                && (el.Name.ToString() != "Index")
                && (el.Name.ToString() != "Plus")
                && (el.Name.ToString() != "Colon")
                && (el.Name.ToString() != "DoubleColon"));
        }

        public static XDocument GetXml(string xmlString)
        {
            return XDocument.Parse(xmlString);
        }

        public static string GetString(XDocument xmlDoc)
        {
            return xmlDoc.ToString();
        }
    }
}