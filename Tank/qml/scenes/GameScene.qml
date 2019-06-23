import Felgo 3.0
import QtQuick 2.0
import "../common"
//import "../levels"

SceneBase {
    id:gameScene
       // the filename of the current level gets stored here, it is used for loading the
    property string activeLevelFileName
       //
    property int activeNumPlayers
       // the currently loaded level gets stored here
    property variant activeLevel

 //   property alias controller: controller

    signal backPressed()

       // set the name of the current level, this will cause the Loader to load the corresponding level
    function setLevel(fileName) {
      activeLevelFileName = fileName
    }
    //
    function setPlayer(numPlayers) {
      activeNumPlayers = numPlayers
    }
    // background
    Rectangle {
      anchors.fill: parent.gameWindowAnchorItem
      color: "#47688e"
    }

    MenuButton {
        z:1
        text: "Back"
        // anchor the button to the gameWindowAnchorItem to be on the edge of the screen on any device
        anchors.right: gameScene.gameWindowAnchorItem.right
        anchors.rightMargin: 10
        anchors.top: gameScene.gameWindowAnchorItem.top
        anchors.topMargin: 10
        onClicked: {
          backPressed()
          activeLevel = undefined
          activeLevelFileName = ""
        }
    }
    PhysicsWorld {
      id: physicsWorld
      //gravity: Qt.point(0, 25)
      debugDrawVisible: true // enable this for physics debugging
      //z: 1000

    }
    // load levels at runtime
    Loader {
      id: loader
      source: activeLevelFileName !== "" ? "../levels/" + activeLevelFileName : ""
      active: true
      onLoaded: {
          // since we did not define a width and height in the level item itself, we are doing it here
        item.width = gameScene.width/1
        item.height = gameScene.height
        //item.x=gameScene.width/2 - item.width/2
          // store the loaded level as activeLevel for easier access
        activeLevel = item

      }
    }

    // name of the current level
     Text {
       id:showActiveLevel
       anchors.left: gameScene.gameWindowAnchorItem.left
       anchors.leftMargin: 10
       anchors.top: gameScene.gameWindowAnchorItem.top
       anchors.topMargin: 10
       color: "white"
       font.pixelSize: 20
       text: activeLevel !== undefined ? activeLevel.levelName : ""
     }
     Text {
       anchors.left: gameScene.gameWindowAnchorItem.left
       anchors.leftMargin: 10
       anchors.top: showActiveLevel.bottom
       color: "white"
       font.pixelSize: 20
       text: activeNumPlayers+" Player"
     }



     Keys.forwardTo: controller
     TwoAxisController {
       id: controller

       onInputActionPressed: {
         //console.debug("key pressed actionName " + actionName)
         if(actionName == "up") {
            activeLevel.player1.tank.tankBody.source="../../images/p1_up.png"
            activeLevel.player1.tank.rotate = 0
            activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*170*32)
         }else
         if(actionName == "down" ) {
            activeLevel.player1.tank.tankBody.source="../../images/p1_down.png"
            activeLevel.player1.tank.rotate = 4
            activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*170*32)
         }else
         if(actionName == "left") {
            activeLevel.player1.tank.tankBody.source="../../images/p1_left.png"
            activeLevel.player1.tank.rotate = 1
            activeLevel.player1.tank.boxCollider.force=Qt.point(controller.xAxis*170*32,0)
         }else
         if(actionName == "right" ) {
            activeLevel.player1.tank.tankBody.source="../../images/p1_right.png"
            activeLevel.player1.tank.rotate = 3
            activeLevel.player1.tank.boxCollider.force=Qt.point(controller.xAxis*170*32,0)
         }
       }
       onInputActionReleased: {
//           if(actionName == "up" || actionName == "down" || actionName == "left"|| actionName == "right") {
//                activeLevel.player1.tank.boxCollider.force=Qt.point(0,0)
//           }
           if(actionName == "up" && !isPressed("down") && !isPressed("left") &&!isPressed("right")) {
                  activeLevel.player1.tank.boxCollider.force=Qt.point(0,0)
           }else
           if(actionName == "down" && !isPressed("up") && !isPressed("left") &&!isPressed("right")) {
                  activeLevel.player1.tank.boxCollider.force=Qt.point(0,0)
           }else
           if(actionName == "left" && !isPressed("down") && !isPressed("up") &&!isPressed("right")) {
                  activeLevel.player1.tank.boxCollider.force=Qt.point(0,0)
           }else
           if(actionName == "right" && !isPressed("down") && !isPressed("left") &&!isPressed("up")) {
                  activeLevel.player1.tank.boxCollider.force=Qt.point(0,0)
           }

           if(actionName == "left" && isPressed("up")) {
               activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*170*32)
          }

           if(actionName == "left" && isPressed("down")) {
               activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*170*32)
          }
           if(actionName == "right" && isPressed("up")) {
               activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*170*32)
          }
           if(actionName == "right" && isPressed("down")) {
               activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*170*32)
          }
       }

     }
}
