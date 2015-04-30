using System;
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
                    if (el.HasAttributes)
                        el.Attribute("style").Value = "padding-left:" + (level * 5).ToString() + "px";
                    else
                        el.Add(new XAttribute("style", "padding-left:" + (level * 5).ToString() + "px"));
                    if (i != 0)
                    {
                        if (el.Name != children[i - 1].Name)
                            el.AddBeforeSelf(new XElement("name", el.Name));
                    }
                    else
                        el.AddBeforeSelf(new XElement("name", el.Name));
                    ChangeXmlSubtree(el, level);
                }
            }
            return subtree;
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