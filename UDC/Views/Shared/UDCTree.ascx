<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<UDC.Models.CurrentIndex>>" %>

    <% foreach (var item in Model) { %>
        <%: Html.DisplayFor(modelItem => item.id) %> часть индекса: <br />
        <span class="constructor-main-table-id" id="main-table-id-<%: Html.DisplayFor(modelItem => item.id) %>"><%: Html.DisplayFor(modelItem => item.MainTableID) %></span
        ><span class="constructor-language-id" id="language-id-<%: Html.DisplayFor(modelItem => item.id) %>"><%: Html.DisplayFor(modelItem => item.LanguageID) %></span
        ><span class="constructor-form-id" id="form-id-<%: Html.DisplayFor(modelItem => item.id) %>"><%: Html.DisplayFor(modelItem => item.FormID) %></span
        ><span class="constructor-time-id" id="time-id-<%: Html.DisplayFor(modelItem => item.id)%>"><%: Html.DisplayFor(modelItem => item.TimeID).ToHtmlString() %></span
        ><span class="constructor-place-id" id="place-id-<%: Html.DisplayFor(modelItem => item.id) %>"><%: Html.DisplayFor(modelItem => item.PlaceID) %></span
        ><span class="constructor-nation-id" id="nation-id-<%: Html.DisplayFor(modelItem => item.id) %>"><%: Html.DisplayFor(modelItem => item.NationID) %></span
        ><span class="constructor-property-id" id="property-id-<%: Html.DisplayFor(modelItem => item.id) %>"><%: Html.DisplayFor(modelItem => item.PropertyID) %></span
        ><span class=""><%: Html.DisplayFor(modelItem => item.SignBetween) %></span
        >
    <% } %>