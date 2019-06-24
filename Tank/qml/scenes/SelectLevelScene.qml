import Felgo 3.0
import QtQuick 2.0
import "../common"
import"../../assets/images"

SceneBase {
    id: selectLevelScene

    signal levelPressed(string selectedLevel)
    signal backPressed
    property bool level2
    property bool level3
    property bool level4
    // background
    Timer{
        interval: 10;running: true
        repeat: true
        onTriggered: {
            gameWindow.data3.loadData()
            level2=gameWindow.data3.level2
            level3=gameWindow.data3.level3
            level4=gameWindow.data3.level4
        }
    }

    Rectangle {
      anchors.fill: parent.gameWindowAnchorItem
      Image {
          id: ground
          anchors.fill: parent
          source: "../../assets/images/10_1.jpg"
      }
    }
    Grid {
         anchors.centerIn: parent
         spacing: 10
         columns: 5
         MenuButton {
             Image {
                 anchors.fill: parent
                 source: "../../assets/images/1.png"
             }
           width: 50
           height: 50
           onClicked: {
             levelPressed("Level1")

           }
         }
         MenuButton {
             Image {
                 anchors.fill: parent
                 source: level2?"../../assets/images/2.png":"../../assets/images/lock.png"
             }
           width: 50
           height: 50
           onClicked: {
             if(level2){
                levelPressed("Level2")
             }else{

             }
           }
         }
         MenuButton {
              radius: 100
             Image {
                 anchors.fill: parent
                 source: level3?"../../assets/images/3.png":"../../assets/images/lock.png"
             }
           width: 50
           height: 50
           onClicked: {
               if(level3){
                  levelPressed("Level3")
               }else{

               }             
           }
         }
         MenuButton {
             Image {
                 anchors.fill: parent
                 source: level4?"../../assets/images/4.png":"../../assets/images/lock.png"
             }
           width: 50
           height: 50
           onClicked: {
               if(level4){
                  levelPressed("Level4")
               }else{

               }
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
