<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<UDC.Models.Index>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Общие определители</h2>

<ul class="main-table-items">
    <% foreach (var item in Model.Where(parent => parent.ParentId == null)) { %>
    <% if (!(((item.IndexType == "SpecialDeterminant") && (String.Equals(ViewData["SpecialDet"], "on")))
           || ((item.Removed == true) && (String.Equals(ViewData["IsRemoved"], "on")))))
       { %>
        <li <% if (item.IndexType == "SpecialDeterminant" && item.Removed == false) { %>
                style="font-style: italic"
            <% } else if (item.Removed == true) { %>
                style="opacity: 0.5"
            <% } %>>
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
    <% }
       } %>
</ul>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
