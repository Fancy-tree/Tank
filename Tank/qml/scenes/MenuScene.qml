import Felgo 3.0
import QtQuick 2.0
import QtQuick 2.12
import "../common"

SceneBase {
    id: menuScene
    signal startGamePressed
    signal onlineGamePressed
    signal settingsPressed

    Rectangle {
      anchors.fill: parent.gameWindowAnchorItem
      color: "#47688e"
    }

    // the "logo"
    Text {
      anchors.horizontalCenter: parent.horizontalCenter
      y: 30
      font.pixelSize: 50//
      color: "#e9e9e9"
      text: "Tank"
    }

    Column {
      anchors.centerIn: parent
      topPadding: 50
      spacing: 10
      MenuButton {
        text: "Start"
        onClicked: startGamePressed()
      }
      MenuButton {
        text: "Online Game"
        //onClicked: creditsPressed()
      }
      MenuButton {
        text: "Settings"
        onClicked: settingsPressed()
      }
    }
}
