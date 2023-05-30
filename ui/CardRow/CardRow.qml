import QtQuick 2.7
import QtQuick.Controls 2.0
import "../../ui/FlashCard"
import "../../ui/MemoryClone"
import "../../ui/Card"

Row {
    id: cardRow;
    spacing: 10
    property int pageCount: 6

    FlashCard {
        id: flasCard
        anchors.verticalCenter: parent.verticalCenter
    }

    MemoryClone {
        id: memoryCloneUi
        anchors.verticalCenter: parent.verticalCenter
    }

    Card {
        id: memoryClones
        anchors.verticalCenter: parent.verticalCenter
    }

}
