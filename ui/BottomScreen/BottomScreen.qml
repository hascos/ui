import QtQuick 2.7
import "../../ui/CardRow"

Rectangle {
    id: bottomScreen

    property bool showMain
    //property Room currentRoom: livinRoom
    property int cardSizeWithSpacing: 10 + 324
    property int pageCount: 6

    anchors {
        left: parent.left
        right: parent.right
        bottom: parent.bottom
        //leftMargin: -150
    }
    color: "#020204"
    height: parent.height * 0.5

    Flickable {
        id: swipeView
        interactive: bottomScreen
        anchors.fill: parent

        contentWidth: bottomScreen.pageCount * bottomScreen.cardSizeWithSpacing + 2 * 20
        contentHeight: swipeView.height

        CardRow {
            id: cardRow
            //enabled: bottomScreen.enabled
            x: 20
            y: 30
            spacing: 10

        }
    }

}
