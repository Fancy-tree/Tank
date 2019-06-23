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

    property int isShot: 0
    property int canShot: 1

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
      source: activeLevelFileName !== "" ? "../levels/" + activeLevelFileName +"_"+activeNumPlayers+".qml": ""
      active: true
      onLoaded: {
          //每次重开都从头开始关卡
          gameWindow.gameOver=0;
          gameWindow.numPlayerDead=0;
          gameWindow.player1Dead=0;
          timer1.interval=2000;//敌人出现频率重置
          timer.running=true;//随机数开始生成
          var toRemoveEntityTypes = ["singleBullet","enemy"];
          entityManager.removeEntitiesByFilter(toRemoveEntityTypes);



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

     Timer {
         id:timer1
              interval: 2000; running:activeLevel && !gameWindow.gameOver; repeat: true //只有进入关卡或游戏不gameover,enemy坦克才会产出
              onTriggered: {
                  var startX=105
                  var startY=20
                  var xDirection=0 //
                  var yDirection=0 //

                  entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Enemy.qml"), {
                                                                    "start" : Qt.point(startX, startY),
                                                                    "velocity" : Qt.point(xDirection, yDirection),
                                                                      "entityId":"enemy"
                                                                    });
                  var startX2=230
                  var startY2=20
                  var xDirection2=0 //
                  var yDirection2=0 //
                  entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Enemy.qml"), {
                                                                    "start" : Qt.point(startX2, startY2),
                                                                    "velocity" : Qt.point(xDirection2, yDirection2),
                                                                      "entityId":"enemy"
                                                                    });
                  var startX3=355
                  var startY3=20
                  var xDirection3=0 //
                  var yDirection3=0 //
                  entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Enemy.qml"), {
                                                                    "start" : Qt.point(startX3, startY3),
                                                                    "velocity" : Qt.point(xDirection3, yDirection3),
                                                                      "entityId":"enemy"
                                                                    });
                  var num2=getRandomNum(10000,20000);
                  interval=num2;//随机时间
                       //判断玩家全都死亡游戏结束,停止产出敌人
                      if((activeNumPlayers===2 && gameWindow.numPlayerDead===2)||(activeNumPlayers===1 && gameWindow.numPlayerDead===1)){
                          //console.log("ooooooooover");
                          gameWindow.gameOver=1;
                          running=false;
                          var toRemoveEntityTypes = ["singleBullet","p1","p2","enemy"];
                          entityManager.removeEntitiesByFilter(toRemoveEntityTypes);
                      }

              }
     }
     property double rand: Math.random()
     function getRandomNum(Min,Max){
        var Range = Max - Min;
         return (Min+Math.round(rand*Range));

     }

    //property int rand2000
     Timer{
        id:timer
        interval: 100
        repeat: true
        running: true
        onTriggered: {
            rand=Math.random()
            //rand2000=Math.round(rand*2000)//0~2000
            if((activeNumPlayers===2 && gameWindow.numPlayerDead===2)||(activeNumPlayers===1 && gameWindow.numPlayerDead===1)){//随时判断是否玩家全都死亡gameover
                gameWindow.gameOver=1;
                running=false;
                var toRemoveEntityTypes = ["singleBullet","p1","p2","enemy"];
                entityManager.removeEntitiesByFilter(toRemoveEntityTypes);

            }

        }

     }

     Timer {
              interval: 500; running:isShot===1; repeat: true //玩家发子弹时间间隔
              onTriggered: {
                  canShot=1;
                  isShot=0;
              }
     }


     Keys.forwardTo: [controller,controller2]
     TwoAxisController {
       id: controller
       //shot
       inputActionsToKeyCode: {
           "up": Qt.Key_Up,
              "down": Qt.Key_Down,
              "left": Qt.Key_Left,
              "right": Qt.Key_Right,
              "fire":Qt.Key_Space
       }

        //move shot
       onInputActionPressed: {

         //console.debug("key pressed actionName " + actionName)

         if(actionName == "up") {
            activeLevel.player1.tank.tankBody.source="../../images/p1_up.png"
            activeLevel.player1.rotate = 1
            activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*170*32)
         }else
         if(actionName == "down" ) {
            activeLevel.player1.tank.tankBody.source="../../images/p1_down.png"
            activeLevel.player1.rotate = 3
            activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*170*32)
         }else
         if(actionName == "left") {
            activeLevel.player1.tank.tankBody.source="../../images/p1_left.png"
            activeLevel.player1.rotate = 4
            activeLevel.player1.tank.boxCollider.force=Qt.point(controller.xAxis*170*32,0)
         }else
         if(actionName == "right" ) {
            activeLevel.player1.tank.tankBody.source="../../images/p1_right.png"
            activeLevel.player1.rotate = 2
            activeLevel.player1.tank.boxCollider.force=Qt.point(controller.xAxis*170*32,0)
         }
         if(actionName == "fire" && canShot ){
             var startX=0
             var startY=0
             var xDirection=0 //玩家子弹速度
             var yDirection=0 //玩家子弹速度
             if(activeLevel.player1.rotate===4){
                 startX=activeLevel.player1.tank.x-5
                 startY=activeLevel.player1.tank.y+activeLevel.player1.tank.height/2
                 xDirection=-100
                 yDirection=0
             }
             if(activeLevel.player1.rotate===2){
                 startX=activeLevel.player1.tank.x+activeLevel.player1.tank.width+5
                 startY=activeLevel.player1.tank.y+activeLevel.player1.tank.height/2
                 xDirection=100
                 yDirection=0
             }
             if(activeLevel.player1.rotate===3){
                 startX=activeLevel.player1.tank.x+activeLevel.player1.tank.width/2
                 startY=activeLevel.player1.tank.y+activeLevel.player1.tank.height+5
                 xDirection=0
                 yDirection=100
             }
             if(activeLevel.player1. rotate===1){
                 startX=activeLevel.player1.tank.x+activeLevel.player1.tank.width/2
                 startY=activeLevel.player1.tank.y-5
                 xDirection=0
                 yDirection=-100
             }

             entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Bullet.qml"), {
                                                               "start" : Qt.point(startX, startY),
                                                               "velocity" : Qt.point(xDirection, yDirection),
                                                               });
             isShot=1;
             canShot=0;

         }

       }

       onInputActionReleased: {
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

     TwoAxisController {
       id: controller2
       inputActionsToKeyCode: {
                         "up": Qt.Key_W,
                         "down": Qt.Key_S,
                         "left": Qt.Key_A,
                         "right": Qt.Key_D,
                         "fire": Qt.Key_0
       }



       //move shot
      onInputActionPressed: {

        //console.debug("key pressed actionName " + actionName)
          if(activeNumPlayers===2){
              if(actionName == "up") {
                 activeLevel.player2.tank.tankBody.source="../../images/p2_up.png"
                 activeLevel.player2.rotate = 1
                 activeLevel.player2.tank.boxCollider.force=Qt.point(0,-controller2.yAxis*170*32)
              }else
              if(actionName == "down" ) {
                 activeLevel.player2.tank.tankBody.source="../../images/p2_down.png"
                 activeLevel.player2.rotate = 3
                 activeLevel.player2.tank.boxCollider.force=Qt.point(0,-controller2.yAxis*170*32)
              }else
              if(actionName == "left") {
                 activeLevel.player2.tank.tankBody.source="../../images/p2_left.png"
                 activeLevel.player2.rotate = 4
                 activeLevel.player2.tank.boxCollider.force=Qt.point(controller2.xAxis*170*32,0)
              }else
              if(actionName == "right" ) {
                 activeLevel.player2.tank.tankBody.source="../../images/p2_right.png"
                 activeLevel.player2.rotate = 2
                 activeLevel.player2.tank.boxCollider.force=Qt.point(controller2.xAxis*170*32,0)
              }
              if(actionName == "fire" && canShot ){
                  var startX=0
                  var startY=0
                  var xDirection=0
                  var yDirection=0
                  if(activeLevel.player2.rotate===4){
                      startX=activeLevel.player2.tank.x-5
                      startY=activeLevel.player2.tank.y+activeLevel.player1.tank.height/2
                      xDirection=-100
                      yDirection=0
                  }
                  if(activeLevel.player2.rotate===2){
                      startX=activeLevel.player2.tank.x+activeLevel.player1.tank.width+5
                      startY=activeLevel.player2.tank.y+activeLevel.player1.tank.height/2
                      xDirection=100
                      yDirection=0
                  }
                  if(activeLevel.player2.rotate===3){
                      startX=activeLevel.player2.tank.x+activeLevel.player1.tank.width/2
                      startY=activeLevel.player2.tank.y+activeLevel.player1.tank.height+5
                      xDirection=0
                      yDirection=100
                  }
                  if(activeLevel.player2.rotate===1){
                      startX=activeLevel.player2.tank.x+activeLevel.player1.tank.width/2
                      startY=activeLevel.player2.tank.y-5
                      xDirection=0
                      yDirection=-100
                  }

                  entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Bullet.qml"), {
                                                                    "start" : Qt.point(startX, startY),
                                                                    "velocity" : Qt.point(xDirection, yDirection),
                                                                    });
                   isShot=1;
                   canShot=0;
              }
          }


      }

      onInputActionReleased: {
          if(activeNumPlayers===2){
              if(actionName == "up" && !isPressed("down") && !isPressed("left") &&!isPressed("right")) {
                     activeLevel.player2.tank.boxCollider.force=Qt.point(0,0)
              }else
              if(actionName == "down" && !isPressed("up") && !isPressed("left") &&!isPressed("right")) {
                     activeLevel.player2.tank.boxCollider.force=Qt.point(0,0)
              }else
              if(actionName == "left" && !isPressed("down") && !isPressed("up") &&!isPressed("right")) {
                    activeLevel.player2.tank.boxCollider.force=Qt.point(0,0)
              }else
              if(actionName == "right" && !isPressed("down") && !isPressed("left") &&!isPressed("up")) {
                     activeLevel.player2.tank.boxCollider.force=Qt.point(0,0)
              }

              if(actionName == "left" && isPressed("up")) {
                  activeLevel.player2.tank.boxCollider.force=Qt.point(0,-controller2.yAxis*170*32)
              }

              if(actionName == "left" && isPressed("down")) {
                  activeLevel.player2.tank.boxCollider.force=Qt.point(0,-controller2.yAxis*170*32)
              }
              if(actionName == "right" && isPressed("up")) {
                  activeLevel.player2.tank.boxCollider.force=Qt.point(0,-controller2.yAxis*170*32)
              }
              if(actionName == "right" && isPressed("down")) {
                  activeLevel.player2.tank.boxCollider.force=Qt.point(0,-controller2.yAxis*170*32)
              }

          }


      }
     }
}
