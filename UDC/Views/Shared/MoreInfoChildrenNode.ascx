<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<UDC.Models.IndexModel>" %>

<ul class="main-table-items-subitems">
    <% foreach (var child in Model.Children) { %>
        <li class="main-table-items-subitems-subitem">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo?index=<%= child.Id %>"><span class="main-table-items-item-text" onclick="show(this)">
                <span class="main-table-id"><%= child.Value %></span>
                &nbsp;<%= child.Name %>
            </span>
            </a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <% Html.RenderPartial("MoreInfoChildrenNode", new UDC.Models.IndexModel(child.Id)); %>
        </li>
    <% } %>
</ul>