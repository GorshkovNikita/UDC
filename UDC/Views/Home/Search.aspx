<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Search
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Результаты поиска:</h3>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
    <table class="search" border="1">
        <tr>
            <th>Индекс</th>
            <th>Название</th>
            <th>Описание</th>
        </tr>
        <tr>
            <td>01</td>
            <td>Библиография. Каталоги. Указатели литературы</td>
            <td></td>
        </tr>
        <tr>
            <td>1</td>
            <td>Философия. Психология</td>
            <td></td>
        </tr>
    </table>
</asp:Content>
