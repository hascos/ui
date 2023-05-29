import QtQuick 2.7

Rectangle {
    id: topLeftScreen

    anchors.fill: parent
    color: "#020204"

    Text {
        anchors {
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 20
        }

        font.pixelSize: 12
        font.family: "Roboto"
        font.weight: Font.Bold
        color: "#ffffff"
        text: "mOS"
    }

    Rectangle {
        anchors {
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 40
        }

        Text {
            id: titleText
            anchors.left: parent.left

            font.pixelSize: 24
            font.family: "Roboto"
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

            font.pixelSize: 14
            font.family: "Roboto"
            color: "#e3e3e3"
            text: "New Show | A super hero villain fights for peace"
        }

        Text {
            anchors {
                top: titleDesription.bottom
                topMargin: 25
                left: parent.left
            }

            font.pixelSize: 12
            font.family: "Roboto"
            font.weight: Font.Bold
            color: "#ffffff"
            text: "Operational services"
        }
    }
}
