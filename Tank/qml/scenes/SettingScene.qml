import Felgo 3.0
import QtQuick 2.0
import QtQuick 2.12
import "../common"
import ".."
import"../../assets/images"
SceneBase {
    id: selectLevelScene

    signal backPressed
    // background
    Rectangle {
      anchors.fill: parent.gameWindowAnchorItem
      Image {
          source: "../../assets/images/11.jpg"
      }
    }

    // the "logo"

    Column {
      anchors.bottom:parent.bottom
      anchors.right: parent.right
      topPadding: 50
      spacing: 10

      MenuButton {
        text: "Back"
        onClicked: backPressed()
      }
    }
    Column {
      anchors.top: parent.top
      anchors.topMargin: 20
      anchors.horizontalCenter: parent.horizontalCenter
      width: parent.width - 40
      spacing: 20

      // header settings
      Text {
//        font.family: standardFont.name
        font.pixelSize: 36
        text: "Settings"
        color: "black"
      }

      // header easy or expert controls
      Text {
//        font.family: standardFont.name
        font.pixelSize: 24
        text: "Shot Control"
        color: "black"
      }

      // header background music
      Text {
//        font.family: standardFont.name
        font.pixelSize: 24
        text: "Background Music"
        color: "black"
      }

      // header sound effects
      Text {
//        font.family: standardFont.name
        font.pixelSize: 24
        text: "Sound Effects"
        color: "black"
      }
    }

    Column {
      anchors.right: parent.right
      anchors.rightMargin: 20
      anchors.top: parent.top
      anchors.topMargin: 77
      spacing: 8

      // button to switch between easy and hard controls
      MenuButton {

        label.source: active ? "../../assets/images/Switch_Easy.png" : "../../assets/images/Switch_Hard.png"
        active: !GameInfo.easyMode
        opacity: 1
        onClicked: {
            GameInfo.easyMode ^= true
            console.log("this")
            console.log(GameInfo.easyMode)
        }
        width: 90
        height: 40
      }

      // button to turn the music on and off
      MenuButton {
        width: 90
        height: 40
        label.source: active ? "../../assets/images/Switch_Off.png" : "../../assets/images/Switch_On.png"
        active: ! settings.musicEnabled
        opacity: 1
        onClicked:  {
          settings.musicEnabled ^= true
        }
      }

      // button to turn the sound effects on and off
      MenuButton {
        width: 90
        height: 40
        label.source: active ? "../../assets/images/Switch_Off.png" : "../../assets/images/Switch_On.png"
        active: ! settings.soundEnabled
        opacity: 1
        onClicked: {
          settings.soundEnabled ^= true
        }
      }
    }
}
