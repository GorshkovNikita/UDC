<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<UDC.Models.Index>>" %>

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
        <% foreach (var item in Model) { %>
        <tr>
            <td style="padding: 2px;"><%= item.Value %></td>
            <td style="padding: 2px;"><a href="../Home/MoreInfo?index=<%= item.Id %>" target="_blank"><%= item.Name %></a></td>
            <td style="padding: 2px;"><%= item.TableType %></td>
        </tr>
        <% } %>
    </table>
</asp:Content>
