import QtQuick 2.0
import Felgo 3.0
import ".."
import "../entities"
//import "../controls"

Item {
  id: levelBaseScene
  // this will be displayed in the GameScene
  property string levelName
  // this is emitted whenever the rectangle has been tapped successfully, the GameScene will listen to this signal and increase the score
  signal rectanglePressed
  //focus: true

  property alias player1: player1

  //background
  Rectangle {
    anchors.fill: parent
    color: "black"
    visible: true
  }

  Home{
      //z:2
      id: home
      entityId: "home"
      entityType: "home"
      anchors.bottom: levelBaseScene.bottom
      anchors.horizontalCenter: levelBaseScene.horizontalCenter
  }



  RedWall{
    id:redWall1
    anchors.bottom: levelBaseScene.bottom
    anchors.left: home.right
  }
  RedWall{
    id:redWall2
    anchors.bottom: redWall1.top
    anchors.left: home.right
  }
  RedWall{
    anchors.bottom: home.top
    anchors.left: home.right
  }
  RedWall{
    anchors.bottom: home.top
    anchors.right: home.right
  }

    // PLAYER 1
    // player and tank
    Player {
      z: 2
      id: player1
      entityId: "p1"
      entityType: "player"
      variationType: "p1"
      tank.entityId: "p1"
      tank.entityType: "tank"
      tank.variationType: "p1"
      tank.originX: levelBaseScene.width/2-45-15-10
      tank.originY: levelBaseScene.height-tank.height

      //tank.rotation: 0
    }


}
