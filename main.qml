import QtQuick 2.7
import QtQuick.Window 2.7
import "ui/Keyboard"
import "ui/TopScreen"
import "ui/BottomScreen"

Window {
    id: window
    //width: 1280
    //height: 720
    //width: 800
    //height: 480
    visible: true
    title: qsTr("Memory Operations")
    flags: Qt.FramelessWindowHint
    visibility: Qt.WindowFullScreen // << the solution

    TopScreen {
        id: topScreen
    }

    BottomScreen {
        id: bottomScreen
    }

    Keyboard {
        id: inputPanel
    }

    TextInput {
        id: textInput
        width: 120
        height: 50
        color: "red"
    }

}
