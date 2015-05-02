// добавление основного индекса
function addMainIndex(elem) {
    node = $(elem).prevAll()[0].children[0].children[1];
    $.get("http://localhost:51128/Ajax/SetStringUDC?partudc=" + $(node).html(), function () {
        updateIndex();
    });
}

// очистка индеса
function ClearConstructor() {
    $.get("http://localhost:51128/Ajax/ClearConstructor", function () {
        updateIndex();
    });
}

// создание составного индекса
function compositeIndexPlus(elem) {
    $.get("http://localhost:51128/Ajax/SetStringUDC?partudc=" + "%2B", function () {
        updateIndex();
    });
}

function compositeIndexColon(elem) {
    $.get("http://localhost:51128/Ajax/SetStringUDC?partudc=" + $(elem).attr("value"), function () {
        updateIndex();
    });
}

function keyDownUpdate(e) {
    var key = (e.keyCode ? e.keyCode : e.which);
    if (e.shiftKey == 1) {
        switch (key) {
            case 16: // ignore shift key
                break;
            case 187:
                $.get("http://localhost:51128/Ajax/SetStringUDC?partudc=" + "%2B", function () {
                    updateIndex();
                });
            default:
                break;
        }
    }
    else if (key == 8) {
        $.get("http://localhost:51128/Ajax/SetStringUDC?partudc=" + key, function () {
            updateIndex();
        });
    }
    else if (key == 187) {
        $.get("http://localhost:51128/Ajax/SetStringUDC?partudc=" + "%3D", function () {
            updateIndex();
        });
    }
}

function keyPressUpdate(e) {
    var key = (e.keyCode ? e.keyCode : e.which);
    if ((key != 8) && (key != 16) && (key != 187) && (key != 43) && (key != 61)) {
        $.get("http://localhost:51128/Ajax/SetStringUDC?partudc=" + String.fromCharCode(key), function () {
            updateIndex();
        });
    }
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
        $.get("http://localhost:51128/Ajax/GetCursorPosition", function (data2) {
            var ctl = document.getElementById('udc');
            ctl.selectionStart = data2;
            ctl.selectionEnd = data2;
        });
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