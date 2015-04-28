using Antlr.Runtime;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;
using Generated;
using System.IO;

namespace UDC.Parser
{
    public static class MyXmlClass
    {
        public static XmlDocument myXmlDocument;
        public static XmlDeclaration xmlDeclaration;
        public static XmlElement root;

        public static void Init()
        {
            myXmlDocument = new XmlDocument();
            xmlDeclaration = myXmlDocument.CreateXmlDeclaration("1.0", "UTF-8", null);
            root = myXmlDocument.CreateElement("UDK");
            myXmlDocument.AppendChild(root);
        }

        public static string XmlDocumentToString(XmlDocument xmlDocument)
        {
            StringWriter w = new StringWriter();
            XmlTextWriter writer = new XmlTextWriter(w);
            writer.Formatting = Formatting.Indented;
            writer.Indentation = 1;
            writer.IndentChar = '\t';
            xmlDocument.Save(writer);
            writer.Close();
            return w.ToString();
        }

        public static string GetStringXml(string indexStr)
        {
            XmlDocument res = GetXml(indexStr);
            return XmlDocumentToString(res);
        }

        public static XmlDocument GetXml(string indexStr)
        {
            string transformedBeforeParsingString = TransformerBeforeParsing.Transform(indexStr);
            if (transformedBeforeParsingString == "error")
                throw new ArgumentException();

            MyXmlClass.Init();
            ANTLRReaderStream input = new ANTLRReaderStream(new StringReader(transformedBeforeParsingString));
            pars2Lexer lexer = new pars2Lexer(input);
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            pars2Parser parser = new pars2Parser(tokens);
            parser.getBigIndex();   // запускаем первое правило грамматики
            return myXmlDocument;
        }
    }
}
