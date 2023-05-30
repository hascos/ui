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
            rightMargin: 40
        }

        height: 25
        width: 60
        color: "#020204"

        Text {
            id: dateTimeDisplay
            anchors {
                right: parent.right
                verticalCenter: parent.verticalCenter
            }

            font.pixelSize: 16
            font.weight: Font.Bold
            color: "#ffffff"

            text: apiHandler.currentTime
        }

    }

    Rectangle {
        id: settings
        anchors {
            right: dateTimeHolder.left
            top: parent.top
            margins: 22
            rightMargin: 10
        }

        height: 25
        width: 25
        color: "#020204"

        Image {
            id: gearIcon
            height: 20
            width: 20
            source: "qrc:/ui/assets/gear.png"
        }

    }

    color: "#020204"
    width: parent.width * 2/4.5
}

