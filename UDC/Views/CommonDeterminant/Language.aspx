<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Общие определители языка
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Общие определители языка</h3>
    <ul class="language-table">
        <li class="language-table-items-item">
            <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
            <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=00</span> Многоязычные документы</span>
        </li>
        <li class="language-table-items-item">
            <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
            <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=02</span> Оригиналы или их адаптации</span>
            <ul class="language-table-items-subitems">
                <li class="language-table-items-subitems-subitem">
                    <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=021</span> Оригинальные тексты (не адаптированные, не отредактированные)</span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=025</span> Адаптированные, отредактированные, исправленные варианты</span>
                </li>
            </ul>
        </li>
        <li class="language-table-items-item">
            <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
            <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=03</span> Переведенные документы. Переводы</span>
        </li>
        <li class="language-table-items-item">
            <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
            <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=1</span> Индоевропейские языки в целом</span>
            <ul class="language-table-items-subitems">
                <li class="language-table-items-subitems-subitem">
                    <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=11</span> Германские языки</span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=12</span> Италийские языки (мертвые)</span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=13</span> Романские языки</span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=14</span> Греческий</span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=13</span> Кельтские языки</span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=16</span> Славянские языки</span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=17</span> Балтийские языки</span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=18</span> Албанский</span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=19</span> Армянский</span>
                </li>
            </ul>
        </li>
        <li class="language-table-items-item">
            <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
            <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=21</span> Индийские языки</span>
            <ul class="language-table-items-subitems">
                <li class="language-table-items-subitems-subitem">
                    <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=211</span> Санскрит</span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=212</span> Пали</span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=213</span> Пракрит</span>
                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
                    <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=214</span> Новоиндийские (современные индийские) языки</span>
                </li>
            </ul>
        </li>
        <li class="language-table-items-item">
            <img class="language-table-items-item-add" src="../../Images/plus.gif" onclick="addLanguageIndex(this)" />
            <span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=22</span> Иранские языки</span>
        </li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
