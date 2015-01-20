<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Общие определители рас, народов, этнических групп и национальностей
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Общие определители рас, народов, этнических групп и национальностей</h3>

    <ul class="main-table-items">
        <li class="main-table-items-item">
                <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                <span class="main-table-items-item-text"><span class="main-table-id">(=1.2)</span> Народы определенных физико-географических районов</span>
                <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
                <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
                <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
                <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                    <ul class="main-table-items-subitems">
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(=1.210.7)</span> Жители островов</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
                            <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(=1.23)</span> Горцы </span>
                            <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
                            <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(=1.24)</span> Жители пещер и подземелий</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
                            <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(=1.253)</span> Жители лесов и джунглей</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
                            <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                        </li>
                    </ul>
          </li>
        <li class="main-table-items-item">
                <img class="" src="../../Images/plus.gif" onclick="show(this)"/> 
                <span class="main-table-items-item-text"><span class="main-table-id">(=1.3)</span> Отдельные народы и национальности стран древнего мира</span>
                <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
                <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
                <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
                <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                <ul class="main-table-items-subitems">
                    <li class="main-table-items-subitems-subitem">
                        <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                        <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(=1.37)</span> Жители Древнего Рима </span>
                        <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
                        <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
                        <span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
                        <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                    </li>
                 </ul>
         </li>
         <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/> 
            <span class="main-table-items-item-text"><span class="main-table-id">(=1.4)/(=1.9)</span> Отдельные народы и национальности стран современного мира</span>
            <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
            <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
            <ul class="main-table-items-subitems">
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(=1.470=512.1)</span> Тюркские народы России</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
                    <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(=1.493)</span> Бельгийцы</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
                    <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(=1.494)</span> Швейцарцы</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
                    <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
            </ul>  
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/> 
            <span class="main-table-items-item-text"><span class="main-table-id">(=11/=8)</span> Различные расы, народы, культурно-языковые группы</span>
            <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
            <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
            <ul class="main-table-items-subitems">
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(=11/19)</span> Белая раса в целом. "Европейцы"</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
                    <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(=11)</span> Германские народы. Германцы</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
                    <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                    <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(=16)</span> Славянские народы</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
                    <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                        <ul class="main-table-items-subitems">
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(=161.1)</span> Русские. Русскоязычное население</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
                            <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                        </li>
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(=161.2)</span> Белорусы</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
                            <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                        </li>
                            <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text" onclick="show(this)"><span class="main-table-id">(=161.3)</span> Украинцы</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addNationIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addNationIndexPlus(this)">+</span>
                            <!--<span class="main-table-items-item-add add-index-button" onclick="addNationIndexSlash(this)">/</span>-->
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                                </li>
                        </ul>
                </li>
            </ul>  
        </li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
