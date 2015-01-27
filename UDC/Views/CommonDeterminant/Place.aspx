<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Общие определители места
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Общие определители места</h3>

    <ul class="main-table-items">
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(1)</span> Место и пространство вообще. Локализация. Ориентация </span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
            <ul class="main-table-items-subitems">
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(1-0/-9)</span> Ограничения и уточнения места различного рода</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                </li>
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(1-0)</span> Зоны</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                    <ul class="main-table-items-subitems">
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(1-01)</span> Специфические географические области и зоны</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                        </li>
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(1-02)</span> Зоны, применяемые в отдельных науках</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                            <ul class="main-table-items-subitems">
                                <li class="main-table-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(1-021)</span> Биологические зоны</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                    <ul class="main-table-items-subitems">
                                        <li class="main-table-subitems-subitem">
                                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(1-021.1)</span> Флористические царства</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                            <ul class="main-table-items-subitems">
                                                <li class="main-table-subitems-subitem">
                                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(1-021.11)</span> Голарктическое царство (Европа, Северная Азия и Северная Америка)</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                                </li>
                                                <li class="main-table-subitems-subitem">
                                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(1-021.12)</span> Палеотропическое царство (Южная Азия и Африка)</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(1-04)</span> Пограничные зоны. Границы</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                        </li>
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(1-05)</span> Области, участки (поверхности Земли) в зависимости от их формы, конфигурации</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                        </li>
                    </ul>
                </li>
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(15)</span> Вселенная, мировое или космическое пространство вообще. В космосе. Космический. Местоположение вне Земли</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                    <ul class="main-table-items-subitems">
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(150)</span> Небесные круги, полюсы и точки</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                            <ul class="main-table-items-subitems">
                                <li class="main-table-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(151.2)</span> Части мирового пространства, космоса</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                    <ul class="main-table-items-subitems">
                                        <li class="main-table-subitems-subitem">
                                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(151.21)</span> В Солнечной системе</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                        </li>
                                        <li class="main-table-subitems-subitem">
                                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(151.22)</span> В окрестностях Солнечной системы</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(157)</span> Планеты, их районы и местоположение на них</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(2)</span> Физико-географические обозначения</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
            <ul class="main-table-items-subitems">
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(20)</span> Экосфера</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                    <ul class="main-table-items-subitems">
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(150)</span> Небесные круги, полюсы и точки</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                            <ul class="main-table-items-subitems">
                                <li class="main-table-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(151.2)</span> Части мирового пространства, космоса</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                    <ul class="main-table-items-subitems">
                                        <li class="main-table-subitems-subitem">
                                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(151.21)</span> В Солнечной системе</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                        </li>
                                        <li class="main-table-subitems-subitem">
                                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(151.22)</span> В окрестностях Солнечной системы</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(157)</span> Планеты, их районы и местоположение на них</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                        </li>
                    </ul>
                </li>
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(21)</span> Поверхность Земли в целом. Природные зоны и пояса</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                </li>
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(23)</span> Горы. Пересеченная местность. Выше уровня моря</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                </li>
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(24)</span> Ниже уровня моря. Под земелей. Подземный</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                </li>
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(25)</span> Естественная поверхность Земли (независимо от высоты над уровнем моря). Поверхность в ее природном состоянии, обработанная и обжитая</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                </li>
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(26)</span> Океаны, моря, связи между ними</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                </li>
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(28)</span> Внутренние воды</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                </li>
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(29)</span> Земля в соответствиии с физико-географическими особенностями</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                </li>
            </ul>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(3)</span> Страны и местности древнего мира  </span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(4)</span> Европа </span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
            <ul class="main-table-items-subitems">
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(41)</span> Британские острова (Острова Великобритания. Ирландия с прилегающими мелкими островами. Нормандские острова. Скала Роколл)</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                    <ul class="main-table-items-subitems">
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(41-4)</span> Соединенное Королевство вместе с Содружеством и империей</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                            <ul class="main-table-items-subitems">
                                <li class="main-table-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(410)</span> Великобритания. Соединенное королевство Великобритании и Северной Ирландии</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                    <ul class="main-table-items-subitems">
                                        <li class="main-table-subitems-subitem">
                                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(410.1)</span> Англия</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                        </li>
                                        <li class="main-table-subitems-subitem">
                                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(410.3)</span> Уэльс</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                        </li>
                                        <li class="main-table-subitems-subitem">
                                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(410.5)</span> Шотландия</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        
                    </ul>
                </li>
                <li class="main-table-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(43)</span> Страны центральной Европы</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                    <ul class="main-table-items-subitems">
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(430)</span> Германия. Федеративная республика Германия. Bundesrepublic Deutschland</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                            <ul class="main-table-items-subitems">
                                <li class="main-table-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(430.1)</span> Западные и южные земли Германии</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                    <ul class="main-table-items-subitems">
                                        <li class="main-table-subitems-subitem">
                                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(430.111)</span> Земля Шлезвиг-Гольштейн (Киль) </span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                        </li>   
                                        <li class="main-table-subitems-subitem">
                                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(430.113)</span> Земля Гамбург</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                        </li> 
                                    </ul>
                                </li>
                                <li class="main-table-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(430.2)</span> Восточные земли Германии</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                </li>
                                                
                            </ul>
                        </li>
                        <li class="main-table-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(436)</span> Австрия. Австрийская республика</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                            

                            <ul class="main-table-items-subitems">
                                <li class="main-table-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(436.1)</span> Вена (земля и город)</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                </li>   
                                <li class="main-table-subitems-subitem">
                                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(436.2)</span> Нижняя Австрия (Санкт-Пельтен)</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
                                </li> 
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(5)</span> Азия</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(6)</span> Африка </span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(7)</span>Северная (и Центральная) Америка </span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(8)</span> Южная Америка </span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)" />
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(9)</span> Австралазия. Австралия и Океания. Полярные области </span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addPlaceIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addPlaceIndexSlash(this)">/</button>
        </li>
    </ul>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
