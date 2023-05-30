import QtQuick 2.7

Rectangle {
    id: memoryCloneUi

    color: "#020204"
    width: 324
    height: 132

    Item {
        id: memoryClone
        width: 324
        height: 132

        Image {
            source: "qrc:/ui/assets/card-back-topleft.png"
        }

        Rectangle {
            x: 12
            width: 324 - 2 * 12
            height: 12
            color: "#f9fbfc"
        }

        Image {
            x: 324 - 12
            source: "qrc:/ui/assets/card-back-topright.png"
        }

        Rectangle {
            y: 12
            width: 324
            height: 132 - 2 * 12
            color: "#f9fbfc"
        }

        Image {
            y: 132 - 12
            source: "qrc:/ui/assets/card-back-bottomleft.png"
        }

        Rectangle {
            x: 12
            y: 132 - 12
            width: 324 - 2 * 12
            height: 12
            color: "#f9fbfc"
        }

        Image {
            x: 324 - 12
            y: 132- 12
            source: "qrc:/ui/assets/card-back-bottomright.png"
        }

        Row {
            id: flashText
            anchors.top: parent.top
            anchors.topMargin: 15
            anchors.left: parent.left
            anchors.leftMargin: 17
            anchors.right: parent.right

            height: 48

            Image {
                source: "qrc:/ui/assets/binary-code.png"
            }
        }

        Column {
            id: cardColumn
            anchors.top: parent.top
            anchors.topMargin: 15
            anchors.left: parent.left
            anchors.leftMargin: 122

            spacing: 0

            Text {
                font.pixelSize: 22
                text: "Memory Clone"
                color: "#3d464d"
            }
            Text {
                font.pixelSize: 10
                text: "Binary model"
                color: "#90989d"
            }
        }

        Image {
            x: 123
            y: 63
            source: "qrc:/ui/assets/separator-line.png"
        }

        MouseArea {
            id: ta
            //enabled: cardUi.enabled
            anchors.fill: parent
            z: 1


        }

    }

}

