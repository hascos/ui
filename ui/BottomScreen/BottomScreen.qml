import QtQuick 2.7

Rectangle {
    id: bottomScreen

    anchors {
        left: parent.left
        right: parent.right
        bottom: parent.bottom
    }
    color: "#020204"
    height: parent.height * 0.6

    Rectangle {
        id: gearSettingsIconHolder
        anchors {
            left: parent.left
            right: parent.right
            verticalCenter: parent.verticalCenter
            margins: 40
        }

        height: parent.height * .70
        width: parent.width
        radius: 10
        color: "#F0F3F4"

        Image {
            id: gearSettingsIcon
            anchors.centerIn: parent
            width: parent.width * .65
            fillMode: Image.PreserveAspectFit
            source: "qrc:/ui/assets/gear.png"
        }
    }

}
