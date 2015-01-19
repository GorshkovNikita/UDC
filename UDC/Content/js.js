// добавление основного индекса
function addMainIndex(elem) {
    node = $(elem).prevAll()[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateMainIndex", { mainIndex: $(node).html() });
    updateIndex();
}

// + к основному индексу
function addMainIndexPlus(elem) {
    node = $(elem).prevAll()[1].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateMainIndexPlus", { mainIndex: $(node).html() });
    updateIndex();
}

// / к основному индексу
function addMainIndexSlash(elem) {
    node = $(elem).prevAll()[2].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateMainIndexSlash", { mainIndex: $(node).html() });
    updateIndex();
}

// добавление языкового определителя
function addLanguageIndex(elem) {
    node = $(elem).prevAll()[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateLanguage", { languageIndex: $(node).html() });
    updateIndex();
}

// добавление еще одного языкового индекса
function addNewLanguageIndex(elem) {
    node = $(elem).prevAll()[1].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateLanguagePlus", { languageIndex: $(node).html() });
    updateIndex();
}

function addLanguageTranslate(elem) {
    node = $(elem).prevAll()[2].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdateLanguageTranslate", { languageIndex: $(node).html() });
    updateIndex();
}

// добавлние общего определителя места
function addPlaceIndex(elem) {
    node = $(elem).prevAll()[0].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdatePlaceIndex", { placeIndex: $(node).html() });
    updateIndex();
}

// добавление нового общего определителя места (+)
function addPlaceIndexPlus(elem) {
    node = $(elem).prevAll()[1].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdatePlaceIndexPlus", { placeIndex: $(node).html() });
    updateIndex();
}

// добавление интервала общего определителя места (/)
function addPlaceIndexSlash(elem) {
    node = $(elem).prevAll()[2].children[0];
    currentPartIndex = $('.current-part-index')[0];
    $.post("http://localhost:51128/Ajax/UpdatePlaceIndexSlash", { placeIndex: $(node).html() });
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
    node = $(elem).nextAll()[5];
    if ($(node).css("display") == "none")
        node.style.display = "block";
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