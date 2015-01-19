<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Общие определители языка
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Общие определители языка</h3>
    <ul class="language-table">
        <li class="language-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="language-table-items-item-text" ><span class="language-table-id">=00</span> Многоязычные документы</span>
            <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
            <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>
        <li class="language-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="language-table-items-item-text" ><span class="language-table-id">=02</span> Оригиналы или их адаптации</span>
            <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
            <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
            <ul class="language-table-items-subitems">
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=021</span> Оригинальные тексты (не адаптированные, не отредактированные)</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=025</span> Адаптированные, отредактированные, исправленные варианты</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
            </ul>
        </li>
        <li class="language-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=03</span> Переведенные документы. Переводы</span>
            <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
            <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>
        <li class="language-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=1</span> Индоевропейские языки в целом</span>
            <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
            <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
            <ul class="language-table-items-subitems">
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=11</span> Германские языки</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=12</span> Италийские языки (мертвые)</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageSlash(this)">Переведенные</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=13</span> Романские языки</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=14</span> Греческий</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=13</span> Кельтские языки</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=16</span> Славянские языки</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=17</span> Балтийские языки</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=18</span> Албанский</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=19</span> Армянский</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
            </ul>
        </li>
        <li class="language-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=21</span> Индийские языки</span>
            <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
            <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
            <ul class="language-table-items-subitems">
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=211</span> Санскрит</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=212</span> Пали</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=213</span> Пракрит</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=214</span> Новоиндийские (современные индийские) языки</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
            </ul>
        </li>
        <li class="language-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=22</span> Иранские языки</span>
            <span class="main-table-items-item-add add-index-button" onclick="addLanguageIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addNewLanguageIndex(this)">+</span>
            <span class="main-table-items-item-add add-index-button" onclick="addLanguageTranslate(this)">Переведенные</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
