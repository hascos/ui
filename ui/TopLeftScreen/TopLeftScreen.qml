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

            font.pixelSize: 14
            color: "#ffffff"

            text: "Api Service"
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

            font.pixelSize: 24
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

            font.pixelSize: 15
            color: "#e3e3e3"

            text: "New Show | A super hero villan fights for peace at any cost"
        }

        Text {
            anchors {
                top: titleDesription.bottom
                topMargin: 25
                left: parent.left
            }

            font.pixelSize: 13
            color: "#ffffff"

            text: "Operational services"
            font.bold: true
        }


    }

}
