import QtQuick 2.7

Rectangle {
    id: topLeftScreen

    anchors {
        left: parent.left
        right: topRightScreen.left
        bottom: parent.bottom
        top: parent.top
    }

    color: "#020204"

    Rectangle {
        anchors {
            left: parent.left
            top: parent.top
            margins: 20
            leftMargin: 40
        }

        height: 25
        width: parent.width
        color: "#020204"

        Text {
            anchors {
                left: parent.left
                verticalCenter: parent.verticalCenter
            }

            font.pixelSize: 16
            font.weight: Font.Bold
            color: "#ffffff"

            text: "mOS"
        }

    }

    Rectangle {
        anchors {
            left: parent.left
            verticalCenter: parent.verticalCenter
            margins: 40
        }

        Text {
            id: titleText

            anchors {
                left: parent.left
            }

            font.pixelSize: 25
            font.weight: Font.Medium
            color: "#ffffff"

            text: "Memory Operations"
        }

        Text {
            id: titleDesription
            anchors {
                top: titleText.bottom
                topMargin: 10
                left: parent.left
            }

            font.pixelSize: 16
            color: "#ffffff"

            text: "New Show | A super hero villan fights for peace"
        }

        Text {
            anchors {
                top: titleDesription.bottom
                topMargin: 25
                left: parent.left
            }

            font.pixelSize: 13
            font.family: "Roboto"
            font.weight: Font.Bold
            color: "#ffffff"

            text: "Operational services"
        }


    }

}
