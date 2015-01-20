<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Search
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Результаты поиска:</h3>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
    <table cellspacing="0" class="search" border="1">
        <tr>
            <th style="background-color: #6D75B8; padding: 2px;">Индекс</th>
            <th style="background-color: #6D75B8; padding: 2px;">Название</th>
            <th style="background-color: #6D75B8; padding: 2px;">Тип</th>
            <th style="background-color: #6D75B8; padding: 2px;">Подробнее</th>
        </tr>
        <tr>
            <td style="padding: 2px;">01</td>
            <td style="padding: 2px;">Библиография. Каталоги. Указатели литературы</td>
            <td style="padding: 2px;">Основные таблицы</td>
            <td style="padding: 2px;"></td>
        </tr>
        <tr>
            <td style="padding: 2px;">1</td>
            <td style="padding: 2px;">Философия. Психология</td>
            <td style="padding: 2px;">Основные таблицы</td>
            <td style="padding: 2px;"></td>
        </tr>
        <tr>
            <td style="padding: 2px;">(038)</td>
            <td style="padding: 2px;">Словари. Языковые словари. Специальные и технические словари</td>
            <td style="padding: 2px;">Общий определитель формы документа</td>
            <td style="padding: 2px;">
                <h5>Родители:</h5>
                <p style="padding-left: 15px">(03) Справочные издания</p>
                <h5>Дети:</h5>
                <p style="padding-left: 15px">Дети отсутствуют</p>
                <h5>Примеры:</h5>
                <p style="padding-left: 15px">(038)=20=30 Англо-немецкий словарь <br />
                    54 (038) = 134.2 Испанский химический словарь <br />
                    или<br />
                    (038) 54 = 134.2 Испанский химический словарь <br />
                </p>
                <h5>Ссылки:</h5>
                <p style="padding-left: 15px">
                    -> 81’373 Лексикология<br />
                    -> 81’374 Лексикография. Словари, их составление и содержание. Виды словарей
                </p>
            </td>
        </tr>
    </table>
</asp:Content>
