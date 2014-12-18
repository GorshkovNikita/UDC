function addMainIndex(elem) {
    node = elem.nextSibling.nextSibling.children[0];
    $.post("Home/Update", { mainIndex: $(node).html() });
    $('.constructor-main-table-id').load("Home/Select", { limit: 1 });
}

function addLanguageIndex(elem) {
    node = elem.nextSibling.nextSibling.children[0];
    $.post("Update", { languageIndex: $(node).html() });
    $('.constructor-language-id').load("Select", { limit: 1 });
}

function show(elem) {
    node = elem.nextSibling.nextSibling;
    if ($(node).css("display") == "none")
        node.style.display = "block";
    else
        node.style.display = "none";
}