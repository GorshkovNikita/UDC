<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Общие определители языка
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Общие определители языка</h3>
    <ul class="language-table">
        <li class="language-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="language-table-items-item-text" ><span class="language-table-id">=00</span> Многоязычные документы</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
            <button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>
        </li>
        <li class="language-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="language-table-items-item-text" ><span class="language-table-id">=02</span> Оригиналы или их адаптации</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>            <ul class="language-table-items-subitems">
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=021</span> Оригинальные тексты (не адаптированные, не отредактированные)</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=025</span> Адаптированные, отредактированные, исправленные варианты</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>                </li>
            </ul>
        </li>
        <li class="language-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=03</span> Переведенные документы. Переводы</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>        </li>
        <li class="language-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=1</span> Индоевропейские языки в целом</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>            <ul class="language-table-items-subitems">
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=11</span> Германские языки</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=12</span> Италийские языки (мертвые)</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=13</span> Романские языки</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=14</span> Греческий</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=13</span> Кельтские языки</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=16</span> Славянские языки</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=17</span> Балтийские языки</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=18</span> Албанский</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=19</span> Армянский</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>                </li>
            </ul>
        </li>
        <li class="language-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=21</span> Индийские языки</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>            <ul class="language-table-items-subitems">
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=211</span> Санскрит</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=212</span> Пали</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=213</span> Пракрит</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>                </li>
                <li class="language-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=214</span> Новоиндийские (современные индийские) языки</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>                </li>
            </ul>
        </li>
        <li class="language-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="language-table-items-item-text" onclick="show(this)"><span class="language-table-id">=22</span> Иранские языки</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addLanguageIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addNewLanguageIndex(this)">+</button>
<button style="width: 80px; height: 20px; margin-left: 10px" onclick="addLanguageTranslate(this)">Переведен</button>        </li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
