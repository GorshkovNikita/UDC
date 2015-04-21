// добавление основного индекса
function addMainIndex(elem) {
    node = $(elem).prevAll()[0].children[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateMainIndex", { mainIndex: $(node).html() });
    updateIndex();
}

// + к основному индексу
function addMainIndexPlus(elem) {
    node = $(elem).prevAll()[1].children[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateMainIndexPlus", { mainIndex: $(node).html() });
    updateIndex();
}

// / к основному индексу
function addMainIndexSlash(elem) {
    node = $(elem).prevAll()[2].children[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateMainIndexSlash", { mainIndex: $(node).html() });
    updateIndex();
}

// добавление специального определителя
function addMainIndexSpecDet(elem) {
    node = $(elem).prevAll()[0].children[0].children[0];
    $.post("http://localhost:51128/Ajax/UpdateMainIndexSpecDet", { specDetIndex: $(node).html() });
    updateIndex();
}

// добавление языкового определителя
function addLanguageIndex(elem) {
    node = $(elem).prevAll()[0].children[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateLanguage", { languageIndex: $(node).html() });
    updateIndex();
}

// добавление еще одного языкового индекса
function addNewLanguageIndex(elem) {
    node = $(elem).prevAll()[1].children[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateLanguagePlus", { languageIndex: $(node).html() });
    updateIndex();
}

// добавление языка перевода
function addLanguageTranslate(elem) {
    node = $(elem).prevAll()[2].children[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateLanguageTranslate", { languageIndex: $(node).html() });
    updateIndex();
}

// добавлние общего определителя места
function addPlaceIndex(elem) {
    node = $(elem).prevAll()[0].children[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdatePlaceIndex", { placeIndex: $(node).html() });
    updateIndex();
}

// добавление нового общего определителя места (+)
function addPlaceIndexPlus(elem) {
    node = $(elem).prevAll()[1].children[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdatePlaceIndexPlus", { placeIndex: $(node).html() });
    updateIndex();
}

// добавление интервала общего определителя места (/)
function addPlaceIndexSlash(elem) {
    node = $(elem).prevAll()[2].children[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdatePlaceIndexSlash", { placeIndex: $(node).html() });
    updateIndex();
}

// добавлние общего определителя времени
function addTimeIndex(elem) {
    node = $(elem).prevAll()[0].children[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateTimeIndex", { timeIndex: $(node).html() });
    updateIndex();
}

// добавление нового общего определителя времени (+)
function addTimeIndexPlus(elem) {
    node = $(elem).prevAll()[1].children[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateTimeIndexPlus", { timeIndex: $(node).html() });
    updateIndex();
}

// добавление интервала общего определителя времени (/)
function addTimeIndexSlash(elem) {
    node = $(elem).prevAll()[2].children[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateTimeIndexSlash", { timeIndex: $(node).html() });
    updateIndex();
}

// добавлние общего определителя нации
function addNationIndex(elem) {
    node = $(elem).prevAll()[0].children[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateNationIndex", { nationIndex: $(node).html() });
    updateIndex();
}

// добавление нового общего определителя нации (+)
function addNationIndexPlus(elem) {
    node = $(elem).prevAll()[1].children[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateNationIndexPlus", { nationIndex: $(node).html() });
    updateIndex();
}

// добавление общего определителя формы документа
function addFormIndex(elem) {
    node = $(elem).prevAll()[0].children[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateFormIndex", { formIndex: $(node).html() });
    updateIndex();
}

// парсинг индекса
function parseUDC(elem) {
    node = elem;
    $.post("http://localhost:51128/Ajax/UDCCreate", { stringUDC: $(elem).html() });
    updateIndex();
}

// очистка индеса
function ClearConstructor() {
    $.post("http://localhost:51128/Ajax/ClearConstructor");
    updateIndex();
}

// создание составного индекса
function compositeIndexPlus(elem) {
    $.post("http://localhost:51128/Ajax/UpdateSign", { between: '+' });
    updateIndex();
}

function compositeIndexColon(elem) {
    $.post("http://localhost:51128/Ajax/UpdateSign", { between: ':' });
    updateIndex();
}

function compositeIndexDoubleColon(elem) {
    $.post("http://localhost:51128/Ajax/UpdateSign", { between: '::' });
    updateIndex();
}

// изменение значения текущей части индекса
function curPartIndexIncrement(elem) {
    $.post("http://localhost:51128/Ajax/CurrentPartIndexIncrement");
    $.get("http://localhost:51128/Ajax/GetCurrentPartIndex", function (data) {
        $('.current-part-index').html(data);
    });
    updateIndex();
}

function curPartIndexDecrement(elem) {
    $.post("http://localhost:51128/Ajax/CurrentPartIndexDecrement");
    $.get("http://localhost:51128/Ajax/GetCurrentPartIndex", function (data) {
        $('.current-part-index').html(data);
    });
    updateIndex();
}

// показать узел дерева
function show(elem) {
    /*if (window.location.href == "http://localhost:51128/CommonDeterminant/FormDocument")
        node = $(elem).nextAll()[2];
    else if (window.location.href == "http://localhost:51128/CommonDeterminant/Nation")
        node = $(elem).nextAll()[3];
    else if (window.location.href == "http://localhost:51128/Home/SpecificDeterminants")
        node = $(elem).nextAll()[2];
    else*/
        node = $(elem).nextAll()[4];
    if ($(node).css("display") == "none") {
        node.style.display = "block";
        $.get("http://localhost:51128/Ajax/GetPartialView?id=" + $(elem).next().children().eq(0).children().eq(0).html(), function (data) {
            $(node).html(data);
        });
    }
    else
        node.style.display = "none";
}

function updateIndex() {
    $.get("http://localhost:51128/Ajax/GetFullIndex", function (data) {
        $('#udc').attr('value', data);
    });
}

$(function () {
    $.post("http://localhost:51128/Ajax/SetCurrentPartIndex");
    $.get("http://localhost:51128/Ajax/GetCurrentPartIndex", function (data) {
        $('.current-part-index').html(data);
    });
    updateIndex();
})