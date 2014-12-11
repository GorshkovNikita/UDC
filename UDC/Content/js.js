function show(elem) {
    node = elem.nextSibling.nextSibling;
    if ($(node).css("display") == "none")
        node.style.display = "block";
    else
        node.style.display = "none";
}