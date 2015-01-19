<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Общие определители формы документа
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Общие определители формы документа</h3>
    <ul class="main-table-items">
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <span class="main-table-items-item-text"><span class="main-table-id">(0.0)</span>Специальные определители</span>
            <span class="main-table-items-item-add add-index-button" onclick="addFormIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)">+</span>
            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>   
            <ul class="main-table-items-subitems">
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <span class="main-table-items-item-text"><span class="main-table-id">(0.021)</span>Документы в соответствии с размером, форматом и объемом</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addFormIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)">/</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>           
                </li>    
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <span class="main-table-items-item-text"><span class="main-table-id">(0.022)</span>Документы по цвету и прозрачности</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addFormIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)">/</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>      
                      <ul class="main-table-items-subitems">
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text"><span class="main-table-id">(0.022.2)</span>Одноцветные</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)">/</span>
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>           
                        </li>      
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text"><span class="main-table-id">(0.022.3)</span>Черно-белые</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)">/</span>
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>           
                         </li>                
                            <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text"><span class="main-table-id">(0.022.4)</span>Двухцветные</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)">/</span>
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>           
                         </li>  
                    </ul>
                 </li>
             </ul>
        </li>           

        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <span class="main-table-items-item-text"><span class="main-table-id">(01)</span>Библиографии</span>
            <span class="main-table-items-item-add add-index-button" onclick="addFormIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>           
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <span class="main-table-items-item-text"><span class="main-table-id">(02)</span>Книги в целом</span>
            <span class="main-table-items-item-add add-index-button" onclick="addFormIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>           
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <span class="main-table-items-item-text"><span class="main-table-id">(03)</span>Справочные издания</span>
            <span class="main-table-items-item-add add-index-button" onclick="addFormIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>           
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <span class="main-table-items-item-text"><span class="main-table-id">(04)</span>Отдельные небольшие произведения. Несериальные издания</span>
            <span class="main-table-items-item-add add-index-button" onclick="addFormIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>           
            <ul class="main-table-items-subitems">
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <span class="main-table-items-item-text"><span class="main-table-id">(041)</span> Памфлеты. Брошюры</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addFormIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)">+</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)">/</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>
                </li>
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <span class="main-table-items-item-text"><span class="main-table-id">(042)</span> Лекции. Речи</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addFormIndex(this)">Добавить в индекс</span>
                    <span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)">+</span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)">/</span>
                    <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>  
                    <ul class="main-table-items-subitems">
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text"><span class="main-table-id">(042.3)</span> Доклады. Лекции</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)">/</span>
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>           
                        </li>      
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text"><span class="main-table-id">(042.4)</span> Курсы лекций</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)">/</span>
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>           
                        </li>                
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <span class="main-table-items-item-text"><span class="main-table-id">(042.5)</span> Речи. Выступления</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndex(this)">Добавить в индекс</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)">/</span>
                            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>      
                        </li>  
                    </ul> 
                </li>
            </ul>        
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <span class="main-table-items-item-text"><span class="main-table-id">(06)</span>Издания учреждений и организаций</span>
            <span class="main-table-items-item-add add-index-button" onclick="addFormIndex(this)">Добавить в индекс</span>
            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)">+</span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)">/</span>
            <span class="more-info"><%: Html.ActionLink("Подробнее", "MoreInfo", "Home") %></span>           
        </li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
