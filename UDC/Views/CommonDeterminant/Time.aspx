<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    УДК - основные таблицы
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Общие определители времени</h3>
    <ul class="main-table-items">
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"0/2"</span> Даты и периоды времени в общепринятом христианском (григорианском) летосчислении</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
            <ul class="main-table-items-subitems">
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"0"</span> Первое тысячелетие</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                    <ul class="main-table-items-subitems">
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"01"</span> 2 век</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                            <ul class="main-table-items-subitems">
                                <li class="main-table-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"010"</span> 1 десятилетие 2 века</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                                    <ul class="main-table-items-subitems">
                                        <li class="main-table-subitems-subitem">
                                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"0100"</span> 100 год</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                                        </li>
                                        <li class="main-table-subitems-subitem">
                                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"0101"</span> 101 год</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                                        </li>
                                    </ul>
                                </li>
                                <li class="main-table-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"011"</span> 2 десятилетие 2 века</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                                </li>
                                <li class="main-table-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"012"</span> 3 десятилетие 2 века</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                                </li>
                            </ul>
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"02"</span> 3 век</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                        </li>
                    </ul>
                </li>
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"1"</span> Второе тысячелетие</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                    <ul class="main-table-items-subitems">
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"10"</span> 11 век</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                        </li>
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"11"</span> 12 век</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                        </li>
                    </ul>
                </li>
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"2"</span> Третье тысячелетие</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                
                    <ul class="main-table-items-subitems">
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"20"</span> 21 век</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                        </li>
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"21"</span> 22 век</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li class="main-table-subitems-subitem">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">"3/7"</span> Подразделение времени, кроме дат в христианском (григорианском) летосчислении</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
            <ul class="main-table-items-subitems">
                <li class="main-table-items-subitems-subitem">
                <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">"3"</span> Общепринятые деления времени: нумерация, наименование и т.д.</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                <ul class="main-table-items-subitems">
                    <li class="main-table-items-subitems-subitem">
                        <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                        <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"31"</span> Общие деления времени</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                        <ul class="main-table-items-subitems">
                            <li class="main-table-items-subitems-subitem">
                                <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"317"</span> Общепринятые деления времени</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                           </li>
                        </ul>
                        <li class="main-table-items-subitems-subitem">
                        <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                        <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"32"</span> Год. Сезоны и другие деления года</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                        <ul class="main-table-items-subitems">
                            <li class="main-table-items-subitems-subitem">
                                <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"321"</span> Весна</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                           </li>
                            <li class="main-table-items-subitems-subitem">
                                <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"322"</span> Лето</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                           </li>
                            <li class="main-table-items-subitems-subitem">
                                <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"323"</span> Осень</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                           </li>
                            <li class="main-table-items-subitems-subitem">
                                <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"324"</span> Зима</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                           </li>
                            <li class="main-table-items-subitems-subitem">
                                <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"325"</span> Кварталы года</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                                <ul class="main-table-items-subitems">
                                    <li class="main-table-items-subitems-subitem">
                                        <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                        <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"325.1"</span> Первый квартал года</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                                   </li>
                                    <li class="main-table-items-subitems-subitem">
                                        <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                        <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"325.1"</span> Второй квартал года</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                                   </li>
                                    <li class="main-table-items-subitems-subitem">
                                        <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                        <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"325.1"</span> Третий квартал года</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                                   </li>
                                    <li class="main-table-items-subitems-subitem">
                                        <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                        <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">"325.1"</span> Четвертый квартал года</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
                                   </li>
                                </ul>
                           </li>
                        </ul>
                    </li>
                </ul>
            </li>
            </ul>
        </li>
        
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">"4"</span> Продолжительность. Периоды или отрезки времени. Возрасты и возрастные группы </span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">"5"</span> Периодичность. Частота. Повторение через определенные интервалы времени</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">"6"</span> Геологическое, археологическое и культурологическое деления времени. Универсальное летосчисление: … лет до нашего вермени, миллионы лет до нашего времени. Нехристианские (негригорианские) летосчисления</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">"7"</span> Явление во времени. Феноменология времени</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
        </li>


        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">"8"</span> Языкознание. Филология. Художественная литература. Литературоведение</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">"9"</span> География. Биографии. История</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addTimeIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addTimeIndexSlash(this)">/</button>
        </li>
    </ul>
</asp:Content>
