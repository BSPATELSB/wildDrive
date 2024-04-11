import QtQuick 2.15
import QtQuick.Window 2.15

import "ui/MainScreen"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    //flags: Qt.FramelessWindowHint

    MainScreen {
        id: mainScreen
    }

    // Text {
    //     id: speedMeter
    //     text: "0"
    //     color: "white"
    //     // anchors{
    //     //     left: parent.left
    //     //     leftMargin: 20
    //     // }
    //     anchors.fill: parent
    //     font.pixelSize: 100
    // }
}
