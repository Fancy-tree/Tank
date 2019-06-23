import Felgo 3.0
import QtQuick 2.0
import "../common"

SceneBase {
    id: selectLevelScene

    signal levelPressed(string selectedLevel)
    signal backPressed
    // background
    Rectangle {
      anchors.fill: parent.gameWindowAnchorItem
      color: "#47688e"
    }
    Grid {
         anchors.centerIn: parent
         spacing: 10
         columns: 5
         MenuButton {
           text: "1"
           width: 50
           height: 50
           onClicked: {
             levelPressed("Level1")
           }
         }
         MenuButton {
           text: "2"
           width: 50
           height: 50
           onClicked: {
             levelPressed("Level2")
           }
         }
         MenuButton {
           text: "3"
           width: 50
           height: 50
           onClicked: {
             levelPressed("Level3")
           }
         }
         Repeater {
           model: 10
           MenuButton {
             text: " "
             width: 50
             height: 50
           }
         }
       }
    MenuButton {
      anchors.bottom: parent.bottom
      anchors.left: parent.horizontalCenter
      anchors.bottomMargin: 25
      anchors.leftMargin: 70

      text: "Back"
      onClicked: backPressed()
    }

}
