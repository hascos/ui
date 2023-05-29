import QtQuick 2.7
import "../../ui/TopLeftScreen"
import "../../ui/TopRightScreen"

Rectangle {
    id: topScreen

    anchors {
        top: parent.top
        left: parent.left
        right: parent.right
        bottom: bottomScreen.top
    }

    color: "#020204"

    TopLeftScreen {
        id: topLeftScreen
    }

    TopRightScreen {
        id: topRightScreen
    }

}
