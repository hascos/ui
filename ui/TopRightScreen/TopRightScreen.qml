import QtQuick 2.7

Rectangle {
    id: topRightScreen

    anchors {
        top: parent.top
        bottom: parent.bottom
        right: parent.right
    }

    Rectangle {
        id: dateTimeHolder
        anchors {
            right: parent.right
            top: parent.top
            margins: 20
        }

        height: 25
        width: 80
        color: "#020204"

        Text {
            id: dateTimeDisplay
            anchors {
                right: parent.right
                verticalCenter: parent.verticalCenter
            }

            font.pixelSize: 13
            color: "#ffffff"

            text: apiHandler.currentTime
            font.bold: true
        }

    }

    color: "#020204"
    width: parent.width * 2/4.5
}

