<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    О программе — приложение ASP.NET MVC
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>О программе.</h1>
        <h2><%: ViewBag.Message %></h2>
    </hgroup>

    <article>
        <p>
            В этой области можно указать дополнительные сведения.
        </p>

        <p>
            В этой области можно указать дополнительные сведения.
        </p>

        <p>
            В этой области можно указать дополнительные сведения.
        </p>
    </article>

    <aside>
        <h3>Заголовок боковой панели</h3>
        <p>
            В этой области можно указать дополнительные сведения.
        </p>
        <ul>
            <li><%: Html.ActionLink("Домашняя страница", "Index", "Home") %></li>
            <li><%: Html.ActionLink("О программе", "About", "Home") %></li>
            <li><%: Html.ActionLink("Контакт", "Contact", "Home") %></li>
        </ul>
    </aside>
</asp:Content>