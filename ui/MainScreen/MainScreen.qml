import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
  id:mainScreen
  width: parent.width
  height: parent.height
  color: "black"

  property variant imageSources: ["qrc:/ui/assets/blue.png", "qrc:/ui/assets/purple.png", "qrc:/ui/assets/red.png"]
  property int currentIndex: 0

  Image {
      id: bgImage
      source: "qrc:/ui/assets/blue.png"
      anchors.fill: parent
  }
  anchors.centerIn: parent

  Button {
    id:themeButton
    height: 100
    width: 100

    palette {
        button: "black"
    }

    onClicked: {
        currentIndex = (currentIndex + 1) % imageSources.length
        bgImage.source = imageSources[currentIndex]
    }

    anchors {
        bottom: parent.bottom
        centerIn: parent
    }

  }
}
