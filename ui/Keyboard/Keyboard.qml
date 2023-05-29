import QtQuick 2.7
import QtQuick.VirtualKeyboard 2.7

InputPanel {
    id: inputPanel
    z: 99
    x: window.width * .20
    y: window.height
    width: window.width * .55

    states: State {
        name: "visible"
        when: inputPanel.active
        PropertyChanges {
            target: inputPanel
            y: window.height - inputPanel.height
        }
    }
    transitions: Transition {
        from: ""
        to: "visible"
        reversible: true
        ParallelAnimation {
            NumberAnimation {
                properties: "y"
                duration: 250
                easing.type: Easing.InOutQuad
            }
        }
    }
}
