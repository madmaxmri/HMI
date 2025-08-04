import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import "../Components"

Item {
    anchors.fill: parent
    GridLayout {
        id: grid
        anchors.fill: parent
        anchors.rightMargin: 50
        anchors.bottomMargin: 20
        anchors.topMargin: 20

        rows: 2
        columns: 2
        rowSpacing: 20
        columnSpacing: 20
    }
}
