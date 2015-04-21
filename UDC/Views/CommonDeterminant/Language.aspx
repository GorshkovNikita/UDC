<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<UDC.Models.Index>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Общие определители языка
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Общие определители языка</h3>
    <ul class="main-table-items">
    <% foreach (var item in Model.Where(parent => parent.ParentId == null)) { %>
        <li>
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo?index=<%: Html.DisplayFor(modelItem => item.Id) %>">
                <span class="main-table-items-item-text">
                    <span style="display:none"><%= item.Id %></span>
                    <span class="main-table-id"><%: Html.DisplayFor(modelItem => item.Value) %></span>
                    &nbsp;<%: Html.DisplayFor(modelItem => item.Name) %>
                </span>
            </a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
            <div class="main-child"></div>
        </li>
    <% } %>
</ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
