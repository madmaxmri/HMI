import QtQuick 2.15
import QtQuick.Controls.Basic
import QtQuick.Layouts
import "../Buttons"

Rectangle {
    id: root

    color: "#662b2323"
    property int musicStationConnected: 0
    Layout.preferredWidth: 380
    Layout.preferredHeight: 262.5
    radius: 15

    ColumnLayout {
        spacing: 5
        anchors {
            left: parent.left
            leftMargin: 20
            verticalCenter: parent.verticalCenter
        }

        Text {
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            text: qsTr("Now Playing")
            font.pixelSize: 14
            font.weight: Font.Bold
            font.family: "Lato"
            color: "#50FFFFFF"
        }

        ListModel {
            id: musicModel



        }
    }

}
