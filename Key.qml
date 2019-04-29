import QtQuick 2.0

Rectangle {
    property alias textCenter: labelCenter.text
    property alias sizeCenter: labelCenter.font.pointSize
    property alias textTop: labelTop.text
    property alias sizeTop: labelTop.font.pointSize
    property alias textBottom: labelBottom.text
    property alias sizeBottom: labelBottom.font.pointSize

    id: rectangle

    width: 50
    height: 60
    color: "#323232"
    border.color: "black"
    border.width: 1
    radius: height / 4

    Text {
        id: labelCenter

        text: ""
        color: "#d9dade"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Text {
        id: labelTop

        text: ""
        color: "#d9dade"

        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 9

    }

    Text {
        id: labelBottom

        text: ""
        color: "#d9dade"

        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 9

    }
}
