<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CreatedIndex
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Разбор индекса</h2>
    <% for (Int32 i = 0; i < (Int32)ViewData["countParts"]; i++) { %>
        <h5 class=""><%= i + 1 %> часть составного индекса</h5>
        <% if ((Int32)ViewData["mainIndexCountParts" + i] != 0) { %>
            <h6 style="-webkit-padding-start: 15px">Основные таблицы:</h6>
        <% } %>
        <% for (Int32 j = 0; j < (Int32)ViewData["mainIndexCountParts" + i]; j++) { %>
            <span style="-webkit-padding-start: 15px"><%= ViewData["mainIndex" + i + "Part" + j] %></span><br />
        <% } %>
        <% if ((Int32)ViewData["placeIndexCountParts" + i] != 0) { %>
             <h6 style="-webkit-padding-start: 15px">Общие определители места:</h6>
        <% } %>
        <% for (Int32 m = 0; m < (Int32)ViewData["placeIndexCountParts" + i]; m++) { %>
            
            <span style="-webkit-padding-start: 15px"><%= ViewData["placeIndex" + i + "Part" + m] %></span><br />
        <% } %>
        <% if ((Int32)ViewData["timeIndexCountParts" + i] != 0) { %>
             <h6 style="-webkit-padding-start: 15px">Общие определители времени:</h6>
        <% } %>
        <% for (Int32 m = 0; m < (Int32)ViewData["timeIndexCountParts" + i]; m++) { %>
            <span style="-webkit-padding-start: 15px"><%= ViewData["timeIndex" + i + "Part" + m] %></span><br />
        <% } %>
        <% if ((Int32)ViewData["nationIndexCountParts" + i] != 0) { %>
             <h6 style="-webkit-padding-start: 15px">Общие определители нации:</h6>
        <% } %>
        <% for (Int32 m = 0; m < (Int32)ViewData["nationIndexCountParts" + i]; m++) { %>
            <span style="-webkit-padding-start: 15px"><%= ViewData["nationIndex" + i + "Part" + m] %></span><br />
        <% } %>
        <% if ((Int32)ViewData["formIndexCountParts" + i] != 0) { %>
             <h6 style="-webkit-padding-start: 15px">Общие определители формы документа:</h6>
        <% } %>
        <% for (Int32 m = 0; m < (Int32)ViewData["formIndexCountParts" + i]; m++) { %>
            <span style="-webkit-padding-start: 15px"><%= ViewData["formIndex" + i + "Part" + m] %></span><br />
        <% } %>
        <% if ((Int32)ViewData["languageIndexCountParts" + i] != 0) { %>
             <h6 style="-webkit-padding-start: 15px">Общие определители языка:</h6>
        <% } %>
        <% for (Int32 k = 0; k < (Int32)ViewData["languageIndexCountParts" + i]; k++) { %>   
            <span style="-webkit-padding-start: 15px"><%= ViewData["languageIndex" + i + "Part" + k] %></span><br />
        <% } %>
        <h5 class="">Разделитель <% if (ViewData["signBetween" + i].ToString() != "") { %> <%= ViewData["signBetween" + i] %> <% }%></h5>
    <% } %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
