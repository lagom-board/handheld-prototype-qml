import QtQuick 2.9
import QtQuick.Window 2.3
import "."

Window {
    property int hspacing: 10
    property int vspacing: 10
    property int key_width: 50
    property int key_height: 60

    id: root

    visible: true
    width: 850
    height: 1340
    //    height: 1250 //

    Component.onCompleted: {
        rect.grabToImage(function(result) {
            result.saveToFile("dump.png");
        });
    }

    Rectangle {
        id: rect

        width: root.width
        height: root.height

        radius: 40
        border.color: "black"

        Column {
            id: column

            topPadding: 40
            anchors.horizontalCenter: parent.horizontalCenter

            Rectangle {
                id: lcd

                color: "#888888"
                anchors.horizontalCenter: parent.horizontalCenter

                width: 770
                height: 800

                Rectangle {
                    color: "#CCCCCC"
                    anchors.top: parent.top
                    anchors.topMargin: 26
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter

                    width: 718
                    height: 701
                }
            }

            Rectangle {
                color: "#00000000"

                height: 30
                width: 10
            }

            Column {
                id: col
                anchors.horizontalCenter: parent.horizontalCenter

                spacing: root.vspacing

                Row {
                    spacing: root.hspacing

                    Key { textTop: "Esc"; textBottom: "~"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "F1"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "F2"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "F3"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "F4"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "F5"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "F6"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "F7"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "F8"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "F9"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "F10"; width: root.key_width; height: root.key_height }
                    Key { textTop: "F11"; textBottom: "Ins"; width: root.key_width; height: root.key_height }
                    Key { textTop: "F12"; textBottom: "Del"; width: root.key_width; height: root.key_height }
                }

                Row {
                    spacing: root.hspacing

                    Key { textBottom: "1"; textTop: "!"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "2"; textTop: "@"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "3"; textTop: "#"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "4"; textTop: "$"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "5"; textTop: "%"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "6"; textTop: "^"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "7"; textTop: "&"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "8"; textTop: "*"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "9"; textTop: "("; width: root.key_width; height: root.key_height }
                    Key { textBottom: "0"; textTop: ")"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "-"; textTop: "_"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "="; textTop: "+"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "⌫"; width: root.key_width; height: root.key_height }
                }

                Row {
                    spacing: root.hspacing

                    Key { textCenter: "Tab"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "Q"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "W"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "E"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "R"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "T"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "Y"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "U"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "I"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "O"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "P"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "["; textTop: "{"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "]"; textTop: "}"; width: root.key_width; height: root.key_height }
                }

                Row {
                    spacing: root.hspacing

                    Key { textCenter: "Sym"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "A"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "S"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "D"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "F"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "G"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "H"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "J"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "K"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "L"; width: root.key_width; height: root.key_height }
                    Key { textBottom: ";"; textTop: ":"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "'"; textTop: "\""; width: root.key_width; height: root.key_height }
                    Key { textCenter: "↵"; width: root.key_width; height: root.key_height }
                }

                Row {
                    spacing: root.hspacing

                    Key { textCenter: "Shift"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "Z"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "X"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "C"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "V"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "B"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "N"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "M"; width: root.key_width; height: root.key_height }
                    Key { textBottom: ","; textTop: "<"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "."; textTop: ">"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "/"; textTop: "?"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "PgUp"; textTop: "↑"; width: root.key_width; height: root.key_height ;sizeBottom: 8 }
                    Key { textCenter: "Shift"; width: root.key_width; height: root.key_height }
                }

                Row {
                    spacing: root.hspacing

                    Key { textCenter: "Ctrl"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "Sup"; width: root.key_width; height: root.key_height }
                    Key { textCenter: "Alt"; width: root.key_width; height: root.key_height }
                    Key { width: 5 * root.key_width + 4 * root.vspacing; height: root.key_height }
                    Key { textCenter: "Alt"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "\\"; textTop: "|"; width: root.key_width; height: root.key_height }
                    Key { textBottom: "Home"; textTop: "←"; width: root.key_width; height: root.key_height; sizeBottom: 8 }
                    Key { textBottom: "PgDn"; textTop: "↓"; width: root.key_width; height: root.key_height; sizeBottom: 8 }
                    Key { textBottom: "End"; textTop: "→"; width: root.key_width; height: root.key_height; sizeBottom: 8 }
                }
            }
        }
    }
}

