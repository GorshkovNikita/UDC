<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<UDC.Models.CurrentIndex>>" %>

    <% foreach (var item in Model) { %>
        <span class="constructor-main-table-id"><%: Html.DisplayFor(modelItem => item.MainTableID) %></span
        ><span class="constructor-language-id"><%: Html.DisplayFor(modelItem => item.LanguageID) %></span
        ><span class="constructor-form-id"><%: Html.DisplayFor(modelItem => item.FormID) %></span
        ><span class="constructor-time-id"><%: Html.DisplayFor(modelItem => item.TimeID).ToHtmlString() %></span
        ><span class="constructor-place-id"><%: Html.DisplayFor(modelItem => item.PlaceID) %></span
        ><span class="constructor-nation-id"><%: Html.DisplayFor(modelItem => item.NationID) %></span
        ><span class="constructor-property-id"><%: Html.DisplayFor(modelItem => item.PropertyID) %></span
        ><br />
        <span class="clear-constructor" onclick="ClearConstructor()">Очистить конструктор</span>
    <% } %>
