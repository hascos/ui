import QtQuick 2.7
import QtQuick.Window 2.7
import "ui/Keyboard"
import "ui/TopScreen"
import "ui/BottomScreen"

Window {
    id: window
    //width: 1280
    //height: 720
    width: 800
    height: 480
    visible: true

    title: qsTr("Memory Operations")

    visibility: Window.FullScreen
    flags: Qt.FramelessWindowHint

    // KeyPressHandler to handle F3 key press
    Item {
        focus: true
        Keys.onPressed: {
            if (event.key === Qt.Key_F3) {
                Qt.quit(); // Quit the application
            }
        }
    }

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
