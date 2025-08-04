import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts
import "../Components"

Item {

    id: vehicleScreenView
    anchors.fill: parent
    GridLayout {
        id: grid
        anchors.fill: parent

        rows: 2
        columns: 2
        rowSpacing: 20
        columnSpacing: 20

        ColumnLayout {
            spacing: 20
            Layout.row: 0
            Layout.column: 0
            Layout.columnSpan: 1
            Layout.rowSpan: 1



            BatteryTile {
                id: batteryTile
            }

            PowerControl {
                onModeChanged: (index)=> {
                    batteryTile.vehicleMode = index
                }
            }
        }
    }
}

