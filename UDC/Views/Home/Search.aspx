<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Search
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Результаты поиска:</h3>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
    <table cellspacing="0" class="search" border="1">
        <tr>
            <th style="background-color: #6D75B8; padding: 2px;">Индекс</th>
            <th style="background-color: #6D75B8; padding: 2px;">Название</th>
            <th style="background-color: #6D75B8; padding: 2px;">Тип</th>
        </tr>
        <tr>
            <td style="padding: 2px;">01</td>
            <td style="padding: 2px;"><a href="../Home/MoreInfo" target="_blank">Библиография. Каталоги. Указатели литературы</a></td>
            <td style="padding: 2px;">Основные таблицы</td>
        </tr>
        <tr>
            <td style="padding: 2px;">1</td>
            <td style="padding: 2px;"><a href="../Home/MoreInfo" target="_blank">Философия. Психология</a></td>
            <td style="padding: 2px;">Основные таблицы</td>
        </tr>
        <tr>
            <td style="padding: 2px;">(038)</td>
            <td style="padding: 2px;"><a href="../Home/MoreInfo" target="_blank">Словари. Языковые словари. Специальные и технические словари</a></td>
            <td style="padding: 2px;">Общий определитель формы документа</td>
        </tr>
    </table>
</asp:Content>
