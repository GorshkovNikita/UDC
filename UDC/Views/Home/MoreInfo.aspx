<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    MoreInfo
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Подробнее:</h2>
    <h3><span class="more-info-index">612</span><span class="more-info-name"> ФИЗИОЛОГИЯ. ФИЗИОЛОГИЯ ЧЕЛОВЕКА. СРАВНИТЕЛЬНАЯ ФИЗИОЛОГИЯ</span></h3>
    <p style="padding-left: 15px">Основная таблица</p>
    <h5>Родительские индексы:</h5>
    <ul style="padding-left: 15px" class="main-table-items">
        <!--<img class="" src="../../Images/plus.gif" onclick="show(this)" />-->
        <li>
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">61</span> Медицинские науки</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
    </ul>
    <h5>Дочерние индексы:</h5>
    <ul style="padding-left: 15px" class="main-table-items">
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">612.1</span> Кровообращение. Кровь</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
            <ul class="main-table-items-subitems">
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.11</span> Общие свойства крови</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                    <ul class="main-table-items-subitems">
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.111</span> Красные кровяные тельца. Эритроциты</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                            <ul class="main-table-items-subitems">
                                <li class="main-table-items-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">612.111.1</span> Химический состав</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                                </li>
                                <li class="main-table-items-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">612.111.2</span> Количество эритроцитов </span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                                </li>
                            </ul>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.112</span> Лейкоциты и амебовидные клетки крови</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.113</span> Артериальная кровь</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                        </li>
                    </ul>
                </li>
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.12</span> Химические свойства крови</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                </li>
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.13</span> Кровообращение (гемодинамика). Гидродинамика кровообращения</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                </li>
            </ul>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.2</span> Дыхание. Дыхательная система</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.3</span> Пищеварение. Питание</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.4</span> Физиология желез. Секреция. Экскреция</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.5</span> Животное тепло. Термальные процессы</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.6</span> Размножение. Рост. Развитие</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.7</span> Двигательные функции. Органы движения. Голосовой аппарат. Голос. Наружные покровы</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.8</span> Нервная система. Органы чувств </span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
    </ul>
    <h5>Примеры:</h5>
    <p style="padding-left: 15px">
        612.187.35 Влияние сосудодвигательных нервов на печень<br />
        612.4.067:612.8.062 Влияние желез внутренней секреции на нервную систему<br />
        612.391:612.111 Питание эритроцитов 
    </p>
    <h5>Ссылки:</h5>
    <p style="padding-left: 15px">
        -> 591.1 Физиология животных
    </p>
    <h5>Специальные определители</h5>
    <ul style="padding-left: 15px" class="main-table-items">
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">612.01</span> Общие вопросы физиологии </span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
            <ul class="main-table-items-subitems">
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.013</span> Жизнь. Смерть</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                    <ul class="main-table-items-subitems">
                        <li class="main-table-items-subitems-subitem">
                        <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.013.1</span> Общие вопросы</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">612.013.4</span> Витализм </span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">612.013.5</span> Сравнительная физиология человека, животных и растений</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.013.6</span> Органический и неорганический мир (сравнение живых существ с неорганическими объектами) </span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.013.7</span> Энергия. Общие вопросы</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                        </li>
                    </ul>
                </li>
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.014</span> Общая физиология клетки и организма </span></a>
                    <span class="main-table-items-item-add add-index-button" onclick="addMainIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addMainIndexPlus(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addMainIndexSlash(this)">/</span>
                    <ul class="main-table-items-subitems">
                        <li class="main-table-items-subitems-subitem">
                        <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.014.1</span> Физиологическая химия клетки</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">612.014.2</span> Гистоморфологические свойства клеток</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">612.014.3</span> Общая физиология клетки</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.06</span> Воздействие, действие, влияние систем, органов и функций. Взаимодействие. Взаимное влияние</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
            <ul class="main-table-items-subitems">
                        <li class="main-table-items-subitems-subitem">
                        <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.062</span> Влияние на систему, орган или функцию </span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">612.063</span> Стимулирующее положительное воздействие, влияние</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">612.064</span> Отрицательное, замедляющее воздействие, влияние </span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                        </li>
                    </ul>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">612.08</span> Методы исследований. Эксперимент. Наблюдения</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
    </ul>
    <h5>Книги с индексом 612</h5>
    <ol style="padding-left: 40px">
        <li>Мелькумянц A.M., Балашов С.А. Механочувствительность артериального эндотелия. УДК: 612.133
            <form style="display: inline-block" class="udc-check" method="post" action="http://localhost:51128/Ajax/UDCCreate">
                <input id="udc1" name="stringUDC" type="hidden" value="612.133" />
                <input name="tree" type="hidden" value="false" />
                <input name="db" type="hidden" value="true" />
                <input id="udc-check-submit1" type="submit" value="Добавить" />
            </form>
            <form style="display: inline-block" class="udc-check" method="post" action="http://localhost:51128/Ajax/UDCCreate">
                <input id="udcParse1" name="stringUDC" type="hidden" value="612.133" />
                <input name="tree" type="hidden" value="true" />
                <input name="db" type="hidden" value="false" />
                <input id="udcParse1Submit" type="submit" value="Разобрать индекс" />
            </form>
        </li>
        <li>Ашмарин И.П. Нейрохимия УДК: 612
            <form style="display: inline-block" class="udc-check" method="post" action="http://localhost:51128/Ajax/UDCCreate">
                <input id="udc2" name="stringUDC" type="hidden" value="612" />
                <input name="tree" type="hidden" value="false" />
                <input name="db" type="hidden" value="true" />
                <input id="udc-check-submit2" type="submit" value="Добавить" />
            </form>
            <form style="display: inline-block" class="udc-check" method="post" action="http://localhost:51128/Ajax/UDCCreate">
                <input id="udcParse2" name="stringUDC" type="hidden" value="612" />
                <input name="tree" type="hidden" value="true" />
                <input name="db" type="hidden" value="false" />
                <input id="udcParse2Submit" type="submit" value="Разобрать индекс" />
            </form>
        </li>
        <li>Блум Ф., Лейзерсон., Хофстедтер Л. Б70 Мозг, разум и поведение УДК: 612+577.3
            <form style="display: inline-block" class="udc-check" method="post" action="http://localhost:51128/Ajax/UDCCreate">
                <input id="udc3" name="stringUDC" type="hidden" value="612+577.3" />
                <input name="tree" type="hidden" value="false" />
                <input name="db" type="hidden" value="true" />
                <input id="udc-check-submit3" type="submit" value="Добавить" />
            </form>
            <form style="display: inline-block" class="udc-check" method="post" action="http://localhost:51128/Ajax/UDCCreate">
                <input id="udcParse3" name="stringUDC" type="hidden" value="612+577.3" />
                <input name="tree" type="hidden" value="true" />
                <input name="db" type="hidden" value="false" />
                <input id="udcParse3Submit" type="submit" value="Разобрать индекс" />
            </form>
        </li>
    </ol>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
