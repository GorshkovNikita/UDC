// добавление основного индекса
function addMainIndex(elem) {
    node = $(elem).prevAll()[0].children[0];
    $.post("http://localhost:51128/Ajax/UpdateMainIndex", { mainIndex: $(node).html() });
    $('.constructor-main-table-id').load("http://localhost:51128/Ajax/SelectMainIndex", { limit: 1 });
}

// + к основному индексу
function addMainIndexPlus(elem) {
    node = $(elem).prevAll()[1].children[0];
    $.post("http://localhost:51128/Ajax/UpdateMainIndexPlus", { mainIndex: $(node).html() });
    $('.constructor-main-table-id').load("http://localhost:51128/Ajax/SelectMainIndex", { limit: 1 });
}

// / к основному индексу
function addMainIndexSlash(elem) {
    node = $(elem).prevAll()[2].children[0];
    $.post("http://localhost:51128/Ajax/UpdateMainIndexSlash", { mainIndex: $(node).html() });
    $('.constructor-main-table-id').load("http://localhost:51128/Ajax/SelectMainIndex", { limit: 1 });
}

// добавление языкового определителя
function addLanguageIndex(elem) {
    node = $(elem).prevAll()[0].children[0];
    $.post("http://localhost:51128/Ajax/UpdateLanguage", { languageIndex: $(node).html() });
    $('.constructor-language-id').load("http://localhost:51128/Ajax/SelectLanguage", { limit: 1 });
}

// очистка индеса
function ClearConstructor() {
    $.post("http://localhost:51128/Ajax/ClearMainIndexConstructor");
    $('.constructor-main-table-id').load("http://localhost:51128/Ajax/SelectMainIndex", { limit: 1 });
    $('.constructor-language-id').load("http://localhost:51128/Ajax/SelectLanguage", { limit: 1 });
}

function show(elem) {
    node = $(elem).nextAll()[5];
    if ($(node).css("display") == "none")
        node.style.display = "block";
    else
        node.style.display = "none";
}