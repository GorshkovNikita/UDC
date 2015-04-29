<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<UDC.Models.IndexModel>" %>

<ul class="main-table-items-subitems">
    <% if (Model != null) {
           foreach (var child in Model.Children)
           { %>
    <% if (!(((child.IndexType == "SpecialDeterminant") && (String.Equals(Model.SpecialDet, "on")))
           || ((child.Removed == true) && (String.Equals(Model.Removed, "on")))))
       { %>
        <li class="main-table-items-subitems-subitem"
            <% if (child.IndexType == "SpecialDeterminant")
               { %>
                style="font-style: italic "
            <% }  else if (child.Removed == true) { %>
                style="opacity: 0.5"
            <% } %>>
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo?index=<%: Html.DisplayFor(modelItem => child.Id)%>">
                <span class="main-table-items-item-text">
                    <span style="display:none"><%= child.Id%></span>
                    <span class="main-table-id"><%: Html.DisplayFor(modelItem => child.Value)%></span>
                    &nbsp;<%: Html.DisplayFor(modelItem => child.Name)%>
                </span>
            </a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
            <div class="main-child"></div>
        </li>
    <% }
           }
       } %>
</ul>
