<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<UDC.Models.IndexModel>" %>

<ul class="main-table-items-subitems">
    <% if (Model != null) {
        foreach (var child in Model.SpecialDeterminants) { %>
        <li class="main-table-items-subitems-subitem">
            <img class="special_determinant" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo?index=<%: Html.DisplayFor(modelItem => child.Id) %>">
                <span class="main-table-items-item-text">
                    <span style="display:none"><%= child.Id %></span>
                    <span class="main-table-id"><%: Html.DisplayFor(modelItem => child.Value) %></span>
                    &nbsp;<%: Html.DisplayFor(modelItem => child.Name) %>
                </span>
            </a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <div class="main-child"></div>
        </li>
    <% } 
       } %>
</ul>
