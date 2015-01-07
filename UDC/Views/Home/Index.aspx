<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    УДК - основные таблицы
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Основные таблицы</h3>
    <ul class="main-table-items">
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <span class="main-table-items-item-text"><span class="main-table-id">0</span> Общий отдел</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
            <ul class="main-table-items-subitems">
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">00</span> Общие вопросы науки и культуры</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                    <ul class="main-table-items-subitems">
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">001</span> Наука и знание в целом. Организация уственного труда</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                            <ul class="main-table-items-subitems">
                                <li class="main-table-items-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <span class="main-table-items-item-text"><span class="main-table-id">001.1</span> Общее понятие о науке и знании</span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
                                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                                </li>
                                <li class="main-table-items-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <span class="main-table-items-item-text"><span class="main-table-id">001.2</span> Взаимосвязь наук</span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
                                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                                </li>
                            </ul>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">002</span> Печать в целом. Документация. Научно-техническая информация</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">003</span> Системы письма и письменности. Знаки и символы. Семиотика в целом. Коды. Графическое представление мысли</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                        </li>
                    </ul>
                </li>
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">01</span> Библиография.Каталоги. Указатели литературы</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">02</span> Библиотечное дело. Библиотековедение</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
            </ul>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">1</span> Философия. Психология</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">2</span> Религия. Богословие</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">3</span> Общественные науки</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">5</span> Математика. Естественные науки</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">6</span> Прикладные науки. Медицина. Техника</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">7</span> Искусство. Декоративно-прикладное искусство. Фотография. Музыка. Игры. Спорт</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">8</span> Языкознание. Филология. Художественная литература. Литературоведение</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">9</span> География. Биографии. История</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>
    </ul>
</asp:Content>
