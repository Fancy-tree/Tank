import QtQuick 2.0
import Felgo 3.0
import "../"
import "../entities"
//import "../controls"

Item {
  id: levelBaseScene
  property alias rectangle:rectangle //一切实体大小的依据
  // this will be displayed in the GameScene
  property string levelName
  // this is emitted whenever the rectangle has been tapped successfully, the GameScene will listen to this signal and increase the score
  signal rectanglePressed
  //focus: true

  property alias player1: player1
  property alias home: home




  Wall{
      height:5
      width:rectangle.width+10
      anchors {
          bottom:rectangle.top
          left:rectangle.left
          leftMargin:-5
      }
  }
  Wall{

      height:5
     width:rectangle.width+10
  anchors {
      top:rectangle.bottom
      left:rectangle.left
      leftMargin:-5
  }
  }
  Wall1{
      height:rectangle.height
      width:5
      anchors{
          right:rectangle.left
          top:rectangle.top
      }
  }
  Wall1{
      height:rectangle.height
      width:5
      anchors{
          left:rectangle.right
          top:rectangle.top
      }
  }


  Rectangle {
      id:rectangle
      anchors.centerIn: parent
      height: 300
      width:(height/14)*13

//    anchors.top: parent.top
//    anchors.bottom: parent.bottom
//    anchors.horizontalCenter: parent.horizontalCenter

    color: "black"
    visible: true
  }

  Home{
      //z:2
      id: home
      entityId: "home"
      entityType: "home"
      anchors.bottom: rectangle.bottom
      anchors.horizontalCenter: rectangle.horizontalCenter
  }



  RedWall{
      id:wall1
      z:2
      height:rectangle.height/14/2
      width:rectangle.height/14/2
    anchors.right: home.left
    anchors.bottom: rectangle.bottom

 }
  RedWall{
      id:wall2
      z:2
      height:rectangle.height/14/2
      width:rectangle.height/14/2
      anchors.right: home.left
      anchors.bottom: wall1.top

  }
  RedWall{
      id:wall3
      z:2
      height:rectangle.height/14/2
      width:rectangle.height/14/2
      anchors.right: home.left
      anchors.bottom: wall2.top
  }
  RedWall{
      id:wall4
      z:2
      height:rectangle.height/14/2
      width:rectangle.height/14/2
      anchors.top:wall3.top
      anchors.left: wall3.right


  }




   RedWall{
       id:wall5
       z:2
       height:rectangle.height/14/2
       width:rectangle.height/14/2
       anchors.top: wall4.top
       anchors.left: wall4.right

   }
   RedWall{
       id:wall6
       z:2
       height:rectangle.height/14/2
       width:rectangle.height/14/2
       anchors.top: wall5.top
       anchors.left: wall5.right

   }



   RedWall{
       id:wall7
       z:2
       height:rectangle.height/14/2
       width:rectangle.height/14/2
       anchors.right: wall6.right
       anchors.top: wall6.bottom
   }
   RedWall{
       id:wall8
       z:2
       height:rectangle.height/14/2
       width:rectangle.height/14/2
       anchors.right: wall7.right
       anchors.top: wall7.bottom

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
      tank.originX: levelBaseScene.width/2-45-5
      tank.originY: levelBaseScene.height-tank.height-10

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
      opacity:  (home.gameOverh || (gameWindow.numPlayerDead===1))? 100 : 0
      Image {
          anchors.fill: parent
          source: "../../assets/images/21.jpg"
      }


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

    // show the game over message at the end of each game
    Rectangle {
      z: 20
      id: youwin
      color: "white"
      anchors.centerIn: parent
      width: 200
      height: 200
      radius: 10
      border.width: 5
      border.color: "lightgrey"
      opacity:  (gameWindow.youWin===1) ? 100 : 0//判断YouWin


      // game over message in the color of the winner
      Text {
        id: textWinner2
        text: "You Win"
        color: "black"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 18
        anchors.bottomMargin: 7
        font.pixelSize: 14

      }

      // game statistic
      Text {
        id: textStatistic2
        text: "Unbelievable!"
        font.pixelSize: 12
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: textWinner2.bottom
        anchors.bottomMargin: 7
        horizontalAlignment:  Text.AlignHCenter
      }

      Text {
        id: textStatistic3
        text:"Score\n"
        +"NormalEnemy: "+gameScene.deadNormalEnemy+"*200"+"\n"
        +"SpeedEnemy: "+gameScene.deadSpeedEnemy+"*300"+"\n"
        +"StrongEnemy: "+gameScene.deadStrongEnemy+"*400"+"\n"
        +"You life: "+gameScene.activeLevel.player1.life+"*500"+"\n"
        +"------------------\n"
        +"Total: "+gameScene.score

        font.pixelSize: 12
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: textStatistic2.bottom
        anchors.topMargin: 7
        //anchors.bottom: parent.bottom
        //anchors.bottomMargin: 7
        horizontalAlignment:  Text.AlignHCenter
      }


    }



}
