import QtQuick 2.0
import Felgo 3.0
import "../"
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
    property alias player2: player2

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
    id:redWall3
    anchors.bottom: levelBaseScene.bottom
    anchors.left: home.right
  }
  RedWall{
    anchors.bottom: redWall3.top
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
      variationType: "p1"
      tank.entityId: "p1"
      tank.variationType: "p1"
      tank.originX: levelBaseScene.width/2-45-15-10
      tank.originY: levelBaseScene.height-tank.height

      //tank.rotation: 0
    }

    // PLAYER 2
    // player and tank
    Player {
      z: 2
      id: player2
      entityId: "p2"
      variationType: "p2"
      tank.entityId: "p2"
      tank.variationType: "p2"
      tank.originX: levelBaseScene.width/2+15+10+20
      tank.originY: levelBaseScene.height-tank.height

      //tank.rotation: 0
    }



    // show the game over message at the end of each game
    Rectangle {
      z: 20
      id: gameOver
      color: "white"
      anchors.centerIn: parent
      width: 200
      height: 80
      radius: 10
      border.width: 5
      border.color: "lightgrey"
      opacity:  (home.gameOverh || player1.tank.gameOverp || player2.tank.gameOverp ) ? 100 : 0

      // game over message in the color of the winner
      Text {
        id: textWinner
        text: "Game Over"
        color: "black"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 18
        font.pixelSize: 14

      }

      // game statistic
      Text {
        id: textStatistic
        text: home.gameOverh ? "HOME BROKE" :"YOU DEAD"
        font.pixelSize: 12
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 14+7
        horizontalAlignment:  Text.AlignHCenter
      }
    }
    //补救
//     Rectangle {
//         z: 19
//         anchors.fill: parent
//         color: "black"
//         opacity:  (home.gameOverh || player1.gameOverp) ? 100 : 0
//     }
}
