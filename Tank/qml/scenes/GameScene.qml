import Felgo 3.0
import QtQuick 2.0
import "../common"
//import "../levels"

SceneBase {
    id:gameScene
       // the filename of the current level gets stored here, it is used for loading the
    property string activeLevelFileName
       // the currently loaded level gets stored here
    property variant activeLevel

    signal backPressed()

    property int isShot: 0
    property int canShot: 1
    property int numRound:0//游戏回合记次
    property int sumEnemy:10//本关总敌人数
    property int numMapEnemy:0//当前地图敌人数
    property int maxMapEnemy:4//地图最大敌人数

    property double canAppear:1//Boss出现后禁止小怪生成
    property int ourMoveV: 5440//我方move速度
    property int ourBulletV: 100//我方bullet速度
    property int ourBulletI: 500//我方bullet间隔时间
    property int score: 0//我方总分



       // set the name of the current level, this will cause the Loader to load the corresponding level
    function setLevel(fileName) {
      activeLevelFileName = fileName
    }


    // background
    Rectangle {
      anchors.fill: parent.gameWindowAnchorItem
      color: "#47688e"
    }
    Rectangle {
      anchors.left: parent.left
      y:parent.height/2-height/2-10-20

      color: "green"
      height: width
      width: parent.width/5
      Text {
          anchors.centerIn: parent
          text: "P1 HP:"+activeLevel.player1.life
      }
    }
    Rectangle {
      anchors.right: parent.right
      y:parent.height/2-height/2-10-20

      color: "green"
      height: width
      width: parent.width/5

      Text {
          anchors.centerIn: parent
          //opacity: (activeNumPlayers===2) ? 100 : 0
          text: "Score: "+score +"\n" +"Enemys: "+sumEnemy
      }
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
      source: activeLevelFileName !== "" ? "../levels/" + activeLevelFileName +".qml": ""
      active: true
      onLoaded: {
          //每次重开都从头开始关卡
          gameWindow.gameOver=0;
          gameWindow.numPlayerDead=0;
          gameWindow.youWin=0;
          numRound=0//游戏回合置0
          sumEnemy=10//本关总敌人数
          numMapEnemy=0//当前地图敌人数 置0

          timer1.interval=500;//敌人出现频率重置
          timer1.running=true;
          timer.running=true;//随机数开始生成
          canAppear=1;//小怪可以出现
          countId=0;//id数计算,消除Id重复警告
          var toRemoveEntityTypes = ["singleBullet","enemy"];//需要实体类型相同并赋予拥有唯一id
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


     property int countId : 0//id数计算,消除Id重复警告
     Timer {
         id:timer1
              interval: 500; running:activeLevel && !gameWindow.gameOver; repeat: true //只有进入关卡或游戏不gameover,enemy坦克才会产出
              onTriggered: {
                  countId++;
                  if(canAppear===1){
                      if(numRound===0){
                          var startX=105
                          var startY=20
                          var xDirection=0 //
                          var yDirection=0 //

                          entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Enemy.qml"), {
                                                                            "start" : Qt.point(startX, startY),
                                                                            "velocity" : Qt.point(xDirection, yDirection),
                                                                              "entityId":"enemy"+countId
                                                                            });
                          var startX2=190//敌人很快就会来
                          var startY2=20
                          var xDirection2=0 //
                          var yDirection2=0 //
                          entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Enemy.qml"), {
                                                                            "start" : Qt.point(startX2, startY2),
                                                                            "velocity" : Qt.point(xDirection2, yDirection2),
                                                                              "entityId":"enemy"+countId
                                                                            });
                          var startX3=355
                          var startY3=20
                          var xDirection3=0 //
                          var yDirection3=0 //
                          entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Enemy.qml"), {
                                                                            "start" : Qt.point(startX3, startY3),
                                                                            "velocity" : Qt.point(xDirection3, yDirection3),
                                                                              "entityId":"enemy"+countId
                                                                            });
                          numMapEnemy+=3;

                      }
                      if(numMapEnemy<sumEnemy && numMapEnemy<maxMapEnemy){
                          var num3=getRandomNum(1,3);
                          var num4=getRandomNum(105,355)
                          if(num3===1){
                              var startX4=num4
                              var startY4=20
                              var xDirection4=0 //
                              var yDirection4=0 //

                              entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Enemy.qml"), {
                                                                                "start" : Qt.point(startX4, startY4),
                                                                                "velocity" : Qt.point(xDirection4, yDirection4),
                                                                                  "entityId":"enemy"+countId
                                                                                });

                          }else if(num3===2){
                              var startX5=num4
                              var startY5=20
                              var xDirection5=0 //
                              var yDirection5=0 //
                              entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Enemy.qml"), {
                                                                                "start" : Qt.point(startX5, startY5),
                                                                                "velocity" : Qt.point(xDirection5, yDirection5),
                                                                                  "entityId":"enemy"+countId
                                                                                });


                          }else if(num3===3){
                              var startX6=num4
                              var startY6=20
                              var xDirection6=0 //
                              var yDirection6=0 //
                              entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Enemy.qml"), {
                                                                                "start" : Qt.point(startX6, startY6),
                                                                                "velocity" : Qt.point(xDirection6, yDirection6),
                                                                                  "entityId":"enemy"+countId
                                                                                });

                          }
                          numMapEnemy++


                      }else{

                      }

                  }

                  var num2=getRandomNum(2500,4000);
                  interval=num2;//随机时间
                  numRound++//游戏回合数记次

                  if(gameWindow.gameOver===1){
                      running=false
                  }
              }
     }

     property double rand: Math.random()
     function getRandomNum(Min,Max){
        var Range = Max - Min;
         return (Min+Math.round(rand*Range));

     }

     Timer{
        id:timer
        interval: 100
        repeat: true
        running: true
        onTriggered: {
            rand=Math.random()
            if(gameWindow.numPlayerDead===1||gameWindow.gameOver===1){//随时判断是否玩家全都死亡gameover
                gameWindow.gameOver=1;
                running=false;
                timer1.running=false;//判断玩家全都死亡游戏结束,停止产出敌人
                var toRemoveEntityTypes = ["singleBullet","p1","p2","enemy","propShield","propLifeAdd"];
                entityManager.removeEntitiesByFilter(toRemoveEntityTypes);

            }
            if(sumEnemy===0){//如果万一你赢了
                gameWindow.youWin=1
                gameWindow.gameOver=1;
                running=false;
                timer1.running=false;//判断玩家全都死亡游戏结束,停止产出敌人
                var toRemoveEntityTypes2 = ["singleBullet","p1","p2","enemy","propShield","propLifeAdd"];
                entityManager.removeEntitiesByFilter(toRemoveEntityTypes2);
            }
        }
     }

     Timer {
              interval: ourBulletI; running:isShot===1; repeat: true //玩家发子弹时间间隔
              onTriggered: {
                  canShot=1;
                  isShot=0;
              }
     }



//手机端 move shot 按键
     Rectangle {
       // you should hide those input controls on desktops, not only because they are really ugly in this demo, but because you can move the player with the arrow keys there
       //visible: !system.desktopPlatform
       //enabled: visible
       anchors.right: parent.right
       anchors.bottom: parent.bottom
       anchors.bottomMargin: 10+10
       height: width+10
       width: parent.width/5
       color: "green"
       opacity: 0.6
       Rectangle {
           color: "black"
           anchors.centerIn: parent
           height: 70
           width: 70

           MultiPointTouchArea {
             anchors.fill: parent
             onPressed: {
                 var startX=0
                 var startY=0
                 var xDirection=0 //玩家子弹速度
                 var yDirection=0 //玩家子弹速度
                 if(activeLevel.player1.rotate===4){
                     startX=activeLevel.player1.tank.x-5
                     startY=activeLevel.player1.tank.y+activeLevel.player1.tank.height/2
                     xDirection=-ourBulletV
                     yDirection=0
                 }
                 if(activeLevel.player1.rotate===2){
                     startX=activeLevel.player1.tank.x+activeLevel.player1.tank.width+5
                     startY=activeLevel.player1.tank.y+activeLevel.player1.tank.height/2
                     xDirection=ourBulletV
                     yDirection=0
                 }
                 if(activeLevel.player1.rotate===3){
                     startX=activeLevel.player1.tank.x+activeLevel.player1.tank.width/2
                     startY=activeLevel.player1.tank.y+activeLevel.player1.tank.height+5
                     xDirection=0
                     yDirection=ourBulletV
                 }
                 if(activeLevel.player1. rotate===1){
                     startX=activeLevel.player1.tank.x+activeLevel.player1.tank.width/2
                     startY=activeLevel.player1.tank.y-5
                     xDirection=0
                     yDirection=-ourBulletV
                 }

                 entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Bullet.qml"), {
                                                                   "start" : Qt.point(startX, startY),
                                                                   "velocity" : Qt.point(xDirection, yDirection),
                                                                   "entityId": "singleBullet"+countId
                                                                   });
                 isShot=1;
                 canShot=0;
             }
             onUpdated: {

             }
             onReleased: {

             }
           }


       }





     }

     Rectangle {
         height: width+10
         width: parent.width/5
         anchors.left: parent.left
         anchors.bottom: parent.bottom
         anchors.bottomMargin: 10+10

         color: "green"
         opacity: 0.6
         Rectangle {
             height: 35
             width: 55
             color: "black"

             anchors.top: parent.top
             anchors.horizontalCenter:parent.horizontalCenter
             MultiPointTouchArea {
               anchors.fill: parent
               onPressed: {
                   controller.yAxis = 1
                   activeLevel.player1.tank.tankBody.source="../../images/p1_up.png"
                   activeLevel.player1.rotate = 1
                   activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*ourMoveV)

               }
               onReleased: {
                   controller.yAxis = 0
                   activeLevel.player1.tank.boxCollider.force=Qt.point(0,0)

               }
             }
         }
         Rectangle {
             height: 45
             width: 35
             color: "black"
             anchors.right: parent.right
             anchors.verticalCenter: parent.verticalCenter
             MultiPointTouchArea {
               anchors.fill: parent
               onPressed: {
                   controller.xAxis = 1
                   activeLevel.player1.tank.tankBody.source="../../images/p1_right.png"
                   activeLevel.player1.rotate = 2
                   activeLevel.player1.tank.boxCollider.force=Qt.point(controller.xAxis*ourMoveV,0)

               }
               onReleased: {
                   controller.xAxis = 0
                   activeLevel.player1.tank.boxCollider.force=Qt.point(0,0)

               }

             }

         }
         Rectangle {
             height: 35
             width: 55
             color: "black"
             anchors.bottom: parent.bottom
             anchors.horizontalCenter:parent.horizontalCenter
             MultiPointTouchArea {
               anchors.fill: parent
               onPressed: {
                   controller.yAxis = -1
                   activeLevel.player1.tank.tankBody.source="../../images/p1_down.png"
                   activeLevel.player1.rotate = 3
                   activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*ourMoveV)

               }
               onReleased: {
                   controller.yAxis = 0
                   activeLevel.player1.tank.boxCollider.force=Qt.point(0,0)

               }

             }

         }
         Rectangle {
             height: 45
             width: 35
             color: "black"
             anchors.left: parent.left
             anchors.verticalCenter: parent.verticalCenter
             MultiPointTouchArea {
               anchors.fill: parent
               onPressed: {
                   controller.xAxis = -1
                   activeLevel.player1.tank.tankBody.source="../../images/p1_left.png"
                   activeLevel.player1.rotate = 4
                   activeLevel.player1.tank.boxCollider.force=Qt.point(controller.xAxis*ourMoveV,0)

               }
               onReleased: {
                   controller.xAxis = 0
                   activeLevel.player1.tank.boxCollider.force=Qt.point(0,0)

               }
             }
         }
     }



     Keys.forwardTo: controller

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
            activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*ourMoveV)
         }else
         if(actionName == "down" ) {
            activeLevel.player1.tank.tankBody.source="../../images/p1_down.png"
            activeLevel.player1.rotate = 3
            activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*ourMoveV)
         }else
         if(actionName == "left") {
            activeLevel.player1.tank.tankBody.source="../../images/p1_left.png"
            activeLevel.player1.rotate = 4
            activeLevel.player1.tank.boxCollider.force=Qt.point(controller.xAxis*ourMoveV,0)
         }else
         if(actionName == "right" ) {
            activeLevel.player1.tank.tankBody.source="../../images/p1_right.png"
            activeLevel.player1.rotate = 2
            activeLevel.player1.tank.boxCollider.force=Qt.point(controller.xAxis*ourMoveV,0)
         }
         if(actionName == "fire" && canShot ){
             var startX=0
             var startY=0
             var xDirection=0 //玩家子弹速度
             var yDirection=0 //玩家子弹速度
             if(activeLevel.player1.rotate===4){
                 startX=activeLevel.player1.tank.x-5
                 startY=activeLevel.player1.tank.y+activeLevel.player1.tank.height/2
                 xDirection=-ourBulletV
                 yDirection=0
             }
             if(activeLevel.player1.rotate===2){
                 startX=activeLevel.player1.tank.x+activeLevel.player1.tank.width+5
                 startY=activeLevel.player1.tank.y+activeLevel.player1.tank.height/2
                 xDirection=ourBulletV
                 yDirection=0
             }
             if(activeLevel.player1.rotate===3){
                 startX=activeLevel.player1.tank.x+activeLevel.player1.tank.width/2
                 startY=activeLevel.player1.tank.y+activeLevel.player1.tank.height+5
                 xDirection=0
                 yDirection=ourBulletV
             }
             if(activeLevel.player1. rotate===1){
                 startX=activeLevel.player1.tank.x+activeLevel.player1.tank.width/2
                 startY=activeLevel.player1.tank.y-5
                 xDirection=0
                 yDirection=-ourBulletV
             }

             entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Bullet.qml"), {
                                                               "start" : Qt.point(startX, startY),
                                                               "velocity" : Qt.point(xDirection, yDirection),
                                                               "entityId": "singleBullet"+countId
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
               activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*ourMoveV)
           }

           if(actionName == "left" && isPressed("down")) {
               activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*ourMoveV)
           }
           if(actionName == "right" && isPressed("up")) {
               activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*ourMoveV)
           }
           if(actionName == "right" && isPressed("down")) {
               activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*ourMoveV)
           }


       }

     }

}
