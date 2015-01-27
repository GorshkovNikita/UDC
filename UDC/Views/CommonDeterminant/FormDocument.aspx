<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Общие определители формы документа
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Общие определители формы документа</h3>
    <ul class="main-table-items">
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(0.0)</span>Специальные определители</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addFormIndex(this)">Добавить</button>
            <!--<span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)"></span>
            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)"></span>-->
            <ul class="main-table-items-subitems">
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(0.021)</span>Документы в соответствии с размером, форматом и объемом</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addFormIndex(this)">Добавить</button>
                    <!--<span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)"></span>
                    <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)"></span>-->
                </li>    
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(0.022)</span>Документы по цвету и прозрачности</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addFormIndex(this)">Добавить</button>
                    <!--<span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)"></span>
                    <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)"></span>-->
                      <ul class="main-table-items-subitems">
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(0.022.2)</span>Одноцветные</span></a>
                                        <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addFormIndex(this)">Добавить</button>
                            <!--<span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)"></span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)"></span>-->
                        </li>      
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(0.022.3)</span>Черно-белые</span></a>
                                        <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addFormIndex(this)">Добавить</button>
                            <!--<span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)"></span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)"></span>-->
                         </li>                
                            <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(0.022.4)</span>Двухцветные</span></a>
                                        <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addFormIndex(this)">Добавить</button>
                            <!--<span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)"></span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)"></span>-->
                         </li>  
                    </ul>
                 </li>
             </ul>
        </li>           

        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(01)</span>Библиографии</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addFormIndex(this)">Добавить</button>            <!--<span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)"></span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)"></span>-->
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(02)</span>Книги в целом</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addFormIndex(this)">Добавить</button>            <!--<span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)"></span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)"></span>-->
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(03)</span>Справочные издания</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addFormIndex(this)">Добавить</button>            <!--<span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)"></span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)"></span>-->
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(04)</span>Отдельные небольшие произведения. Несериальные издания</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addFormIndex(this)">Добавить</button>            <!--<span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)"></span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)"></span>-->
            <ul class="main-table-items-subitems">
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(041)</span> Памфлеты. Брошюры</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addFormIndex(this)">Добавить</button>                    <!--<span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)"></span>
                    <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)"></span>-->
                </li>
                <li class="main-table-items-subitems-subitem">
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(042)</span> Лекции. Речи</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addFormIndex(this)">Добавить</button>                    <!--<span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)"></span>
                                    <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)"></span>-->
                    <ul class="main-table-items-subitems">
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(042.3)</span> Доклады. Лекции</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addFormIndex(this)">Добавить</button>                            <!--<span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)"></span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)"></span>-->
                        </li>      
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(042.4)</span> Курсы лекций</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addFormIndex(this)">Добавить</button>                            <!--<span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)"></span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)"></span>-->
                        </li>                
                        <li class="main-table-items-subitems-subitem">
                            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(042.5)</span> Речи. Выступления</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addFormIndex(this)">Добавить</button>                            <!--<span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)"></span>
                            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)"></span>-->
                        </li>  
                    </ul> 
                </li>
            </ul>        
        </li>
        <li class="main-table-items-item">
            <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
            <a href="../Home/MoreInfo"><span class="main-table-items-item-text"><span class="main-table-id">(06)</span>Издания учреждений и организаций</span></a>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addFormIndex(this)">Добавить</button>            <!--<span class="main-table-items-item-add add-index-button" onclick="addFormIndexPlus(this)"></span>
            <span class="main-table-items-item-add add-index-button" onclick="addFormIndexSlash(this)"></span>-->
        </li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
