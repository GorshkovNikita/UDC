<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    УДК - основные таблицы
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Основные таблицы</h3>
    <ul class="main-table-items">
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">0</span> Общий отдел</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
            <ul class="main-table-items-subitems">
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">00</span> Общие вопросы науки и культуры</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                    <ul class="main-table-items-subitems">
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">001</span> Наука и знание в целом. Организация уственного труда</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                            <ul class="main-table-items-subitems">
                                <li class="main-table-items-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">001.1</span> Общее понятие о науке и знании</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                                </li>
                                <li class="main-table-items-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">001.2</span> Взаимосвязь наук</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                                </li>
                            </ul>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">002</span> Печать в целом. Документация. Научно-техническая информация</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">003</span> Системы письма и письменности. Знаки и символы. Семиотика в целом. Коды. Графическое представление мысли</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                        </li>
                    </ul>
                </li>
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">01</span> Библиография.Каталоги. Указатели литературы</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                </li>
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">02</span> Библиотечное дело. Библиотековедение</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                </li>
            </ul>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">1</span> Философия. Психология</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">2</span> Религия. Богословие</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">3</span> Общественные науки</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">5</span> Математика. Естественные науки</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">6</span> Прикладные науки. Медицина. Техника</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">7</span> Искусство. Декоративно-прикладное искусство. Фотография. Музыка. Игры. Спорт</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">8</span> Языкознание. Филология. Художественная литература. Литературоведение</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">9</span> География. Биографии. История</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
    </ul>
</asp:Content>
