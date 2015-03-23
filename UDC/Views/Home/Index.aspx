<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<UDC.Models.Index>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<ul class="main-table-items">
    <% foreach (var item in Model.Where(parent => parent.ParentId == null)) { %>
        <li>
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id"><%: Html.DisplayFor(modelItem => item.Value) %></span>&nbsp;<%: Html.DisplayFor(modelItem => item.Name) %></span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
            <% Html.RenderPartial("../Shared/MainIndexNodePartial", new UDC.Models.ModelForView(Model.ToList(), item.Id)); %>
        </li>
    <% } %>
</ul>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
