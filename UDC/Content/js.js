// добавление основного индекса
function addMainIndex(elem) {
    node = $(elem).prevAll()[0].children[0].children[1];
    $.get("http://localhost:51128/Ajax/SetStringUDC?partudc=" + $(node).html(), function () {
        updateIndex();
    });
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

// парсинг индекса
function parseUDC(elem) {
    node = elem;
    $.post("http://localhost:51128/Ajax/UDCCreate", { stringUDC: $(elem).html() });
    updateIndex();
}

// очистка индеса
function ClearConstructor() {
    $.get("http://localhost:51128/Ajax/ClearConstructor");
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

function compositeIndexSlash(elem) {

}

function keyPressUpdate(e) {
    /*var unicode = e.keyCode ? e.keyCode : e.charCode;
    if (e.shiftKey)
        alert(String.fromCharCode(unicode));
    var actualkey = String.fromCharCode(unicode);
    $.get("http://localhost:51128/Ajax/SetStringUDC?partudc=" + actualkey, function () {
        updateIndex();
    });*/
    var key;
    var isShift;
    var isBackspace;
    if (window.event) {
        key = window.event.keyCode;
        isShift = !!window.event.shiftKey; // typecast to boolean
    } else {
        key = e.which;
        isShift = !!e.shiftKey;
    }
    if (isShift) {
        switch (key) {
            case 16: // ignore shift key
                break;
            case 43:
                $.get("http://localhost:51128/Ajax/SetStringUDC?partudc=" + key, function () {
                    updateIndex();
                });
                break;
            default:
                $.get("http://localhost:51128/Ajax/SetStringUDC?partudc=" + String.fromCharCode(key), function () {
                    updateIndex();
                });
                break;
        }
    }
    else {
        $.get("http://localhost:51128/Ajax/SetStringUDC?partudc=" + key, function () {
            updateIndex();
        });
    }
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
    node = $(elem).nextAll()[2];
    if ($(node).css("display") == "none") {
        node.style.display = "block";
        if ($(elem).attr('class') == "special_determinant")
            $.get("http://localhost:51128/Ajax/GetPartialViewOfSpecialDeterminant?id=" + $(elem).next().children().eq(0).children().eq(0).html(), function (data) {
                $(node).html(data);
            });
        else 
            $.get("http://localhost:51128/Ajax/GetPartialView?id=" + $(elem).next().children().eq(0).children().eq(0).html() 
                + "&removed=" + getParameterByName("removed") +
                "&specialdet=" + getParameterByName("specialdet"),
                function (data) { $(node).html(data); }
            );
    }
    else
        node.style.display = "none";
}

function updateIndex() {
    $.get("http://localhost:51128/Ajax/GetFullIndex", function (data) {
        $('#udc').attr('value', data);
    });
}

function checkRemoved(elem) {
    $.get("http://localhost:51128?removed=true");
}

function checkSpecialDet(elem) {
    $.get("http://localhost:51128?specaldet=true");
}

// получение Get параметров из ссылки
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

// определение позиции курсора в textbox
function getPositionOnTextBox() {
    var ctl = document.getElementById('udc');
    var startPos = ctl.selectionStart;
    var endPos = ctl.selectionEnd;
    $.get("http://localhost:51128/Ajax/SetCursorPosition?pos=" + startPos);
}

function cursorPositionLast() {
    $.get("http://localhost:51128/Ajax/SetCursorPosition");
}

$(function() {
    cursorPositionLast();
})

/*$(function () {
    $.post("http://localhost:51128/Ajax/SetCurrentPartIndex");
    $.get("http://localhost:51128/Ajax/GetCurrentPartIndex", function (data) {
        $('.current-part-index').html(data);
    });
    updateIndex();
})*/