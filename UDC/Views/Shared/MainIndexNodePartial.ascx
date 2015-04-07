<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<UDC.Models.ModelForView>" %>

<ul class="main-table-items-subitems">
    <% foreach (var child in Model.IndexList.Where(index => index.ParentId == Model.ParentId)) { %>
        <li class="main-table-items-subitems-subitem">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)">
                <span class="main-table-id"><%: Html.DisplayFor(modelItem => child.Value) %></span>
                &nbsp;<%: Html.DisplayFor(modelItem => child.Name) %>
            </span>
            </a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
            <% Html.RenderPartial("MainIndexNodePartial", new UDC.Models.ModelForView(Model.IndexList, child.Id)); %>
        </li>
    <% } %>
</ul>
