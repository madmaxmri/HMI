import QtQuick 2.15

Item {
    id: musicScreenView

    Rectangle {
        id: currentPlaying
        width: 500
        color: "#662b2323"
        radius: 25
        anchors {
            top: parent.top
            left: parent.left
            bottom: parent.bottom
            topMargin: 0
            leftMargin: 0
            bottomMargin: 0
        }
    }

    Rectangle {
        id: recommendationBox
        height: 250
        color: "#662b2323"
        radius: 25
        anchors {
            top: parent.top
            left: currentPlaying.right
            right: parent.right
            topMargin: 0
            leftMargin: 30
            rightMargin: 0
        }
    }

    Rectangle {
        id: mediaControl
        width: 345
        height: 250
        color: "#662b2323"
        radius: 25
        anchors {
            top: recommendationBox.bottom
            left: currentPlaying.right
            bottom: parent.bottom
            topMargin: 30
            leftMargin: 30
            bottomMargin: 0
        }
    }

    Rectangle {
        id: mediaMedium
        width: 345
        height: 250
        color: "#662b2323"
        radius: 25
        anchors {
            top: recommendationBox.bottom
            left: mediaControl.right
            bottom: parent.bottom
            right: parent.right
            topMargin: 30
            leftMargin: 30
            bottomMargin: 0
            rightMargin: 0
        }
    }

}
