<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    УДК - основные таблицы
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Основные таблицы</h3>
    <ul class="main-table-items">
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <span class="main-table-items-item-text"><span class="main-table-id">"0/2"</span> Даты и периоды времени в общепринятом христианском (григорианском) летосчислении</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
            <ul class="main-table-items-subitems">
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <span class="main-table-items-item-text"><span class="main-table-id">"0"</span> Первое тысячелетие</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                    <ul class="main-table-items-subitems">
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text"><span class="main-table-id">"01"</span> 2 век</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                            <ul class="main-table-items-subitems">
                                <li class="main-table-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <span class="main-table-items-item-text"><span class="main-table-id">"010"</span> 1 десятилетие 2 века</span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                                    <ul class="main-table-items-subitems">
                                        <li class="main-table-subitems-subitem">
                                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                            <span class="main-table-items-item-text"><span class="main-table-id">"0100"</span> 100 год</span>
                                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                                        </li>
                                        <li class="main-table-subitems-subitem">
                                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                            <span class="main-table-items-item-text"><span class="main-table-id">"0101"</span> 101 год</span>
                                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                                        </li>
                                    </ul>
                                </li>
                                <li class="main-table-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <span class="main-table-items-item-text"><span class="main-table-id">"011"</span> 2 десятилетие 2 века</span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                                </li>
                                <li class="main-table-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <span class="main-table-items-item-text"><span class="main-table-id">"012"</span> 3 десятилетие 2 века</span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                                </li>
                            </ul>
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text"><span class="main-table-id">"02"</span> 3 век</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                        </li>
                    </ul>
                </li>
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <span class="main-table-items-item-text"><span class="main-table-id">"1"</span> Второе тысячелетие</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                    <ul class="main-table-items-subitems">
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text"><span class="main-table-id">"10"</span> 11 век</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                        </li>
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text"><span class="main-table-id">"11"</span> 12 век</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                        </li>
                    </ul>
                </li>
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <span class="main-table-items-item-text"><span class="main-table-id">"2"</span> Третье тысячелетие</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                
                    <ul class="main-table-items-subitems">
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text"><span class="main-table-id">"20"</span> 21 век</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                        </li>
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text"><span class="main-table-id">"21"</span> 22 век</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li class="main-table-subitems-subitem">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">"3/7"</span> Подразделение времени, кроме дат в христианском (григорианском) летосчислении</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
            <ul class="main-table-items-subitems">
                <li class="main-table-items-subitems-subitem">
                <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">"3"</span> Общепринятые деления времени: нумерация, наименование и т.д.</span>
                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                <ul class="main-table-items-subitems">
                    <li class="main-table-items-subitems-subitem">
                        <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                        <span class="main-table-items-item-text"><span class="main-table-id">"31"</span> Общие деления времени</span>
                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                        <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                        <ul class="main-table-items-subitems">
                            <li class="main-table-items-subitems-subitem">
                                <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                <span class="main-table-items-item-text"><span class="main-table-id">"317"</span> Общепринятые деления времени</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                                <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                           </li>
                        </ul>
                        <li class="main-table-items-subitems-subitem">
                        <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                        <span class="main-table-items-item-text"><span class="main-table-id">"32"</span> Год. Сезоны и другие деления года</span>
                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                        <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                        <ul class="main-table-items-subitems">
                            <li class="main-table-items-subitems-subitem">
                                <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                <span class="main-table-items-item-text"><span class="main-table-id">"321"</span> Весна</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                                <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                           </li>
                            <li class="main-table-items-subitems-subitem">
                                <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                <span class="main-table-items-item-text"><span class="main-table-id">"322"</span> Лето</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                                <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                           </li>
                            <li class="main-table-items-subitems-subitem">
                                <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                <span class="main-table-items-item-text"><span class="main-table-id">"323"</span> Осень</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                                <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                           </li>
                            <li class="main-table-items-subitems-subitem">
                                <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                <span class="main-table-items-item-text"><span class="main-table-id">"324"</span> Зима</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                                <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                           </li>
                            <li class="main-table-items-subitems-subitem">
                                <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                <span class="main-table-items-item-text"><span class="main-table-id">"325"</span> Кварталы года</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                                <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                                <ul class="main-table-items-subitems">
                                    <li class="main-table-items-subitems-subitem">
                                        <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                        <span class="main-table-items-item-text"><span class="main-table-id">"325.1"</span> Первый квартал года</span>
                                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                                        <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                                   </li>
                                    <li class="main-table-items-subitems-subitem">
                                        <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                        <span class="main-table-items-item-text"><span class="main-table-id">"325.1"</span> Второй квартал года</span>
                                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                                        <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                                   </li>
                                    <li class="main-table-items-subitems-subitem">
                                        <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                        <span class="main-table-items-item-text"><span class="main-table-id">"325.1"</span> Третий квартал года</span>
                                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                                        <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                                   </li>
                                    <li class="main-table-items-subitems-subitem">
                                        <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                        <span class="main-table-items-item-text"><span class="main-table-id">"325.1"</span> Четвертый квартал года</span>
                                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
                                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                                        <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
                                        <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
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
            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">"4"</span> Продолжительность. Периоды или отрезки времени. Возрасты и возрастные группы </span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">"5"</span> Периодичность. Частота. Повторение через определенные интервалы времени</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">"6"</span> Геологическое, археологическое и культурологическое деления времени. Универсальное летосчисление: … лет до нашего вермени, миллионы лет до нашего времени. Нехристианские (негригорианские) летосчисления</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">"7"</span> Явление во времени. Феноменология времени</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>


        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">"8"</span> Языкознание. Филология. Художественная литература. Литературоведение</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">"9"</span> География. Биографии. История</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addTimeIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
        </li>
    </ul>
</asp:Content>
