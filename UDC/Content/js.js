function show(elem) {
    node = elem.nextSibling.nextSibling;
    if ($(node).css("display") == "none")
        node.style.display = "block";
    else
        node.style.display = "none";
}

function addMainIndex(elem) {
    node1 = elem.nextSibling.nextSibling.children[0];
    node2 = document.getElementsByClassName("main-table")[0];
    node2.innerHTML = node1.innerHTML;
}