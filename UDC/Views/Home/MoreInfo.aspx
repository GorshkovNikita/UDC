<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<UDC.Models.IndexModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    MoreInfo
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Подробнее:</h2>
    <h3><span class="more-info-index"><%= Model.Index.Value %></span><span class="more-info-name">&nbsp;<%= Model.Index.Name %></span></h3>
    <h5>Тип таблицы:
    <% if (Model.Index.IndexType == "Index" && Model.Index.TableType == "MainIndex")
       { %>
        Основная таблица</h5>
    <% }
       else if (Model.Index.IndexType == "SpecialDeterminant")
       { %>
        Специальный определитель</h5>
    <% }
       else if (Model.Index.TableType == "Ig.xml")
       { %>
        Общий определитель времени</h5>
    <% } else if (Model.Index.TableType == "Ic.xml")
       { %>
        Общий определитель языка</h5>
    <% } else if (Model.Index.TableType == "If.xml")
       { %>
        Общий определитель рас, народов, этнических групп и национальностей</h5>
    <% } else if (Model.Index.TableType == "Ie.xml")
       { %>
        Общий определитель места</h5>
    <% } else if (Model.Index.TableType == "Id.xml")
       { %>
        Общий определитель формы документа</h5>
    <% } %>
    <% if (Model.Index.Removed == true)
           { %>
        <h5>Удаленный индекс</h5>
    <% } %>
    <h5>Родительский индекс:</h5>
    <% if (Model.Parent != null) { %>
        <ul style="padding-left: 15px" class="main-table-items">
            <li>
                <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                <a href="../Home/MoreInfo?index=<%= Model.Parent.Id %>"><span class="main-table-items-item-text">
                    <span style="display: none" class=""><%= Model.Parent.Id %></span>
                    <span class="main-table-id"><%= Model.Parent.Value %></span>
                    &nbsp;<%= Model.Parent.Name %></span>
                </a>
                <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
                <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
                <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                <div class="main-child"></div>
            </li>
        </ul>
    <% } else { %>
        <span style="padding-left: 15px">Родительский индекс отсутствует</span>
    <% } %>
    <h5>Дочерние индексы:</h5>
    <ul style="padding-left: 15px" class="main-table-items">
         <% if (Model.Children.Count > 0) {
             foreach (var item in Model.Children) { 
                 if (item.IndexType != "SpecialDeterminant") {
               %>
                <li>
                    <img class="" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo?index=<%= item.Id %>"><span class="main-table-items-item-text">
                        <span style="display: none" class=""><%= item.Id %></span>
                        <span class="main-table-id"><%= item.Value %></span>
                        &nbsp;<%= item.Name %></span>
                    </a>
                    <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
                    <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
                    <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                    <div class="main-child"></div>
                </li>
        <% }
       } }
       else { %>
        <li style="padding-left: 15px">&nbsp;&nbsp;Дочерние индексы отсутствуют</li>
        <% } %>
    </ul>
    <h5>Примеры:</h5>
    <ul style="padding-left: 15px" class="main-table-items">
        <% if (Model.Examples.Count > 0) {
             foreach (var item in Model.Examples) { %>
        <li>
            <% if (item.Type == "Index") { %>
            <a href="http://localhost:51128/Home/MoreInfo?index=<%= item.ID %>">
                <span class="main-table-items-item-text">
                    <span class="main-table-id"><%= item.Index %></span>
                    &nbsp;<%= item.Name %>
                </span>
            </a>
            <% } else if (item.Type == "CompositeIndex") { %>
                <span class="main-table-items-item-text">
                    <span class="main-table-id"><%= item.Index %></span>
                    &nbsp;<%= item.Name %>
                </span>
            <% } %>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
         
        <% }
       } else { %>
        <li style="padding-left: 15px">&nbsp;&nbsp;Примеры отсутствуют</li>
        <% } %>
        </ul>
    <h5>Ссылки:</h5>
    <ul style="padding-left: 15px" class="main-table-items">
        <% if (Model.Links.Count > 0) { 
               foreach (var item in Model.Links) { %>
        <li>
            <% if (item.Type == "Index") { %>
            <a href="http://localhost:51128/Home/MoreInfo?index=<%= item.ID %>">
            <span class="main-table-items-item-text">->&nbsp;
                <span class="main-table-id"><%= item.Index %></span>
                &nbsp;<%= item.Name %></span>
                </a>
                <% } else if (item.Type == "CompositeIndex") { %>
                <span class="main-table-items-item-text">
                    <span class="main-table-id"><%= item.Index %></span>
                    &nbsp;<%= item.Name %>
                </span>
            <% } %>
            <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
            <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
        </li>
        <% }
        } else { %>
        <li style="padding-left: 15px">&nbsp;&nbsp;Ссылки отсутствуют</li>
        <% } %>
    </ul>
    <h5>Специальные определители</h5>
    <ul style="padding-left: 15px" class="main-table-items">
         <% if (Model.SpecialDeterminants.Count > 0) {
             foreach (var item in Model.SpecialDeterminants) {
               %>
                <li>
                    <img class="special_determinant" src="../../Images/plus.gif" onclick="show(this)"/>
                    <a href="../Home/MoreInfo?index=<%= item.Id %>"><span class="main-table-items-item-text">
                        <span style="display: none" class=""><%= item.Id %></span>
                        <span class="main-table-id"><%= item.Value %></span>
                        &nbsp;<%= item.Name %></span>
                    </a>
                    <button style="width: 70px; height: 20px; margin-left: 10px" onclick="addMainIndex(this)">Добавить</button>
                    <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexPlus(this)">+</button>
                    <button style="width: 20px; height: 20px; margin-left: 10px" onclick="addMainIndexSlash(this)">/</button>
                    <div class="main-child"></div>
                </li>
        <% }
       }
       else { %>
        <li style="padding-left: 15px">&nbsp;&nbsp;Специальные определители индексы отсутствуют</li>
        <% } %>
    </ul>
    <% if (Model.SubDivideAs != null) { %>
        <h5>Подразделять как: </h5>
        <a href="../Home/MoreInfo?index=<%= Model.SubDivideAs.Id %>" style="padding-left: 15px"><span class="main-table-items-item-text">
            <span style="display: none" class=""><%= Model.SubDivideAs.Id %></span>
            <span class="main-table-id"><%= Model.SubDivideAs.Value %></span>
            &nbsp;<%= Model.SubDivideAs.Name %></span>
        </a>
    <% } %>
    <% if (Model.SubDivideWith != "") { %>
        <h5><%= Model.SubDivideWith %></h5>
    <% } %>
    <% if (Model.Comment != "") { %>
        <h5>Комментарий:</h5>
        <p style="padding-left: 15px">
            <%= Model.Comment %>
        </p>
    <% } %>
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
