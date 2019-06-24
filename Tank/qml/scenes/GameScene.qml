import Felgo 3.0
import QtQuick 2.0
import "../common"
import"../../assets/images"
//import "../levels"
import com.mycompany 1.0
SceneBase {
    id:gameScene
       // the filename of the current level gets stored here, it is used for loading the
    property string activeLevelFileName
       // the currently loaded level gets stored here
    property variant activeLevel

    signal backPressed()
    signal openlevel(int level)
    property int isShot: 0
    property int canShot: 1
    property int numRound:0//游戏回合记次
    property int sumEnemy:10//本关总敌人数
    property int numMapEnemy:0//当前地图敌人数
    property int maxMapEnemy:4//地图最大敌人数

    //死亡敌人数统计
       property int deadNormalEnemy:0
       property int deadSpeedEnemy:0
       property int deadStrongEnemy:0


    property double canAppear:1//Boss出现后禁止小怪生成
    property int ourMoveV: 5440//我方move速度
    property int ourBulletV: 100//我方bullet速度
    property int ourBulletI: 500//我方bullet间隔时间
    property int score: 0//我方总分
    property int record //ji lu


       // set the name of the current level, this will cause the Loader to load the corresponding level
    function setLevel(fileName) {
      activeLevelFileName = fileName
    }

    // background
    Rectangle {
      anchors.fill: parent.gameWindowAnchorItem
      Image {
          anchors.fill: parent
          source: "../../assets/images/20.jpeg"
      }
    }
    //两侧显示屏
    Rectangle {
      anchors.left: parent.left
      y:parent.height/2-height/2-10-20

      color: "green"
      border.width: 1
      border.color: "white"
      height: width
      width: parent.width/5
      radius:10
      Text {
          color: "white"
          anchors.centerIn: parent
          font.pointSize:10
          text: "P1 HP:"+activeLevel.player1.life
      }
    }
    Rectangle {
      anchors.right: parent.right
      y:parent.height/2-height/2-10-20

      color: "green"
      border.width: 1
      border.color: "white"
      height: width
      width: parent.width/5
      radius:10
      Text{

          color: "white"
          anchors.top: parent.top
          anchors.horizontalCenter: parent.horizontalCenter
          text:score>record ?"Record"+" "+score:"Record"+" "+record
      }

      Text {
           color: "white"
          anchors.centerIn: parent
          font.pointSize:10
          text: "Score: "+score +"\n" +"Enemys: "+sumEnemy
      }
    }

    // name of the current level
     Text {
       id:showActiveLevel
       anchors.left: gameScene.gameWindowAnchorItem.left
       anchors.leftMargin: 10
       anchors.top: gameScene.gameWindowAnchorItem.top
       anchors.topMargin: 10
       color: "black"
       font.pixelSize: 20
       font.bold:true
       text: activeLevel !== undefined ? activeLevel.levelName : ""
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
          startBGM.stop()
        }
    }
    PhysicsWorld {
      id: physicsWorld
      //gravity: Qt.point(0, 25)
//      debugDrawVisible: true// enable this for physics debugging
      //z: 1000

    }

    // load levels at runtime
    Loader {
      id: loader
      source: activeLevelFileName!==""? "../levels/" + activeLevelFileName +".qml":""
      active: true
      onLoaded: {
          if(activeLevelFileName=="Level1"){
              record=gameWindow.data3.level1highscore;
          }
          if(activeLevelFileName=="Level2"){
              record=gameWindow.data3.level2highscore;
          }
          if(activeLevelFileName=="Level3"){
              record=gameWindow.data3.level3highscore;
          }
          if(activeLevelFileName=="Level4"){
              record=gameWindow.data3.level4highscore;
          }
          //每次重开都从头开始关卡
          gameWindow.gameOver=0;
          gameWindow.numPlayerDead=0;
          gameWindow.youWin=0;
          numRound=0//游戏回合置0
          score=0//玩家分数置0
          ourMoveV=5440//玩家move speed reset
          sumEnemy=5//本关总敌人数
          numMapEnemy=0//当前地图敌人数 置0
          //死亡敌人数统计 置0
          deadNormalEnemy=0
          deadSpeedEnemy=0
          deadStrongEnemy=0
          ourMoveV=5440
          ourBulletI=500


          timer1.interval=500;//敌人出现频率重置
          timer1.running=true;
          timer.running=true;//随机数开始生成
          canAppear=1;//小怪可以出现
          countId=0;//id数计算,消除Id重复警告
          var toRemoveEntityTypes = ["singleBullet","enemy","propShield","propLifeAdd","propSpeedUp"];//需要实体类型相同并赋予拥有唯一id
          entityManager.removeEntitiesByFilter(toRemoveEntityTypes);


          // since we did not define a width and height in the level item itself, we are doing it here
        item.width = gameScene.width/1
        item.height = gameScene.height
        //item.x=gameScene.width/2 - item.width/2
          // store the loaded level as activeLevel for easier access
        activeLevel = item
        startBGM.play()
      }
    }
    SoundEffect {
      volume: 0.3
      id: startBGM
      // an ogg file is not playable on windows, because the extension is not supported!
      source: "../../assets/send/start.wav"
    }
    SoundEffect {
      volume: 0.3
      id: startfire
      // an ogg file is not playable on windows, because the extension is not supported!
      source: "../../assets/send/fire.wav"
    }


     property int countId : 0//id数计算,消除Id重复警告
     Timer {
         id:timer1
              interval: 500; running:activeLevel && !gameWindow.gameOver; repeat: true //只有进入关卡或游戏不gameover,enemy坦克才会产出
              onTriggered: {
                  countId++;
                  if(canAppear===1){
                      if(numRound===0){
                          var variationType01 ="normal"
                          var variationType02 ="normal"
                          var variationType03 ="normal"
                          var num6=getRandomNum(1,5);//令第一波敌人也随机方案
                          if(num6===1){
                          }else if(num6===2){
                              variationType02 ="strong"
                          }else if(num6===3){
                              variationType01 ="speed"
                          }else if(num6===4){
                              variationType01 ="speed"
                              variationType03 ="strong"
                          }else if(num6===5){
                              variationType01 ="speed"
                              variationType03 ="speed"
                          }



                          var startX=105
                          var startY=20
                          var xDirection=0 //
                          var yDirection=0 //

                          entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Enemy.qml"), {
                                                                            "start" : Qt.point(startX, startY),
                                                                            "velocity" : Qt.point(xDirection, yDirection),
                                                                              "entityId":"enemy"+countId,
                                                                              "variationType":variationType01,
                                                                            });
                          var startX2=230
                          var startY2=20
                          var xDirection2=0 //
                          var yDirection2=0 //
                          entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Enemy.qml"), {
                                                                            "start" : Qt.point(startX2, startY2),
                                                                            "velocity" : Qt.point(xDirection2, yDirection2),
                                                                              "entityId":"enemy"+countId,
                                                                              "variationType":variationType02,
                                                                            });
                          var startX3=355
                          var startY3=20
                          var xDirection3=0 //
                          var yDirection3=0 //
                          entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Enemy.qml"), {
                                                                            "start" : Qt.point(startX3, startY3),
                                                                            "velocity" : Qt.point(xDirection3, yDirection3),
                                                                              "entityId":"enemy"+countId,
                                                                              "variationType":variationType03,
                                                                            });
                          numMapEnemy+=3;

                      }
                      if(numRound!==0 && numMapEnemy<sumEnemy && numMapEnemy<maxMapEnemy){
                          //var num3=getRandomNum(1,3);
                          var num4=getRandomNum(105,355)//随机地点
                          var num5=getRandomNum(1,5);//随机敌人种类
                          var variationType ="normal"
                          //num5=5;
                          if(num5===3){
                              variationType ="speed"
                          }else if(num5===5){
                              variationType ="strong"

                          }

                          var startX4=num4
                          var startY4=20
                          var xDirection4=0 //
                          var yDirection4=0 //

                          entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/Enemy.qml"), {
                                                                            "start" : Qt.point(startX4, startY4),
                                                                            "velocity" : Qt.point(xDirection4, yDirection4),
                                                                              "entityId":"enemy"+countId,
                                                                              "variationType":variationType,
                                                                            });

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
                var toRemoveEntityTypes = ["singleBullet","p1","p2","enemy","propShield","propLifeAdd","propSpeedUp"];
                entityManager.removeEntitiesByFilter(toRemoveEntityTypes);

            }
            if(sumEnemy===0){//如果万一你赢了
                gameWindow.youWin=1
                if(activeLevelFileName=="Level1"){
                    openlevel(2);
//                    openlevel2=true;
                    gameWindow.data3.level2=true;
                }
                if(activeLevelFileName=="Level2"){
                    openlevel(3);
//                    openlevel3=true;
                    gameWindow.data3.level3=true;

                }
                if(activeLevelFileName=="Level3"){
                    openlevel(4);
//                    openlevel4=true;
                    gameWindow.data3.level4=true;

                }

                gameWindow.gameOver=1;
                running=false;
                timer1.running=false;//判断玩家全都死亡游戏结束,停止产出敌人
                score+=activeLevel.player1.life*500;//
                var toRemoveEntityTypes2 = ["singleBullet","p1","p2","enemy","propShield","propLifeAdd","propSpeedUp"];
                entityManager.removeEntitiesByFilter(toRemoveEntityTypes2);
            }
            if(activeLevelFileName=="Level1"){
                gameWindow.data3.level1highscore=score;
            }
            if(activeLevelFileName=="Level2"){
                gameWindow.data3.level2highscore=score;
            }
            if(activeLevelFileName=="Level3"){
                gameWindow.data3.level3highscore=score;
            }
//            console.log(record)
            if(activeLevelFileName=="Level4"){
               gameWindow.data3.level4highscore=score;
            }
            gameWindow.data3.saveData()
            //gameWindow.data3.loadData()
        }

     }

     Timer {
              interval: ourBulletI; running:isShot===1; repeat: true //玩家发子弹时间间隔
              onTriggered: {
                  canShot=1;
                  isShot=0;
              }
     }



//手机端 shot move按键
     Rectangle {
       // you should hide those input controls on desktops, not only because they are really ugly in this demo, but because you can move the player with the arrow keys there
       //visible: !system.desktopPlatform
       //enabled: visible
       anchors.right: parent.right
       anchors.bottom: parent.bottom
       anchors.bottomMargin: 10+10
       height: width+10
       width: parent.width/5
       //color: "green"
       //color: "#47688e"
       color: "white"
       //opacity: 0.6
       radius: 100
       Rectangle {
           id:imageframe2
           anchors.centerIn: parent
           height: width
           width: parent.width
           radius: 100
           color: "white"
       }
       Image {
           anchors.fill: imageframe2
           source: "../../assets/images/FireControl.png"
       }
       Rectangle {
           color: "black"
           anchors.centerIn: parent
           height: 70
           width: 70
           opacity: 0

           MultiPointTouchArea {
             anchors.fill: parent
             onPressed: {
                 if(canShot){
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
                     startfire.play()
                 }


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
         radius: 100

         //color: "green"
         //color: "#47688e"
         color: "white"
         //radius: 100
         //opacity: 0.6


         Rectangle {
             id:imageframe
             anchors.centerIn: parent
             height: width
             width: parent.width
             radius: 100
             color: "white"
         }
         Image {
             anchors.fill: imageframe
             source: "../../assets/images/MoveControl.png"
         }
         Rectangle {
             height: 35
             width: 55
             color: "black"
             opacity: 0

             anchors.top: parent.top
             anchors.horizontalCenter:parent.horizontalCenter
             MultiPointTouchArea {
               anchors.fill: parent
               onPressed: {
                   controller.yAxis = 1
                   activeLevel.player1.tank.tankBody.source="../../assets/images/p1_up.png"
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
             opacity: 0
             anchors.right: parent.right
             anchors.verticalCenter: parent.verticalCenter
             MultiPointTouchArea {
               anchors.fill: parent
               onPressed: {
                   controller.xAxis = 1
                   activeLevel.player1.tank.tankBody.source="../../assets/images/p1_right.png"
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
             opacity: 0
             anchors.bottom: parent.bottom
             anchors.horizontalCenter:parent.horizontalCenter
             MultiPointTouchArea {
               anchors.fill: parent
               onPressed: {
                   controller.yAxis = -1
                   activeLevel.player1.tank.tankBody.source="../../assets/images/p1_down.png"
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
             opacity: 0
             anchors.left: parent.left
             anchors.verticalCenter: parent.verticalCenter
             MultiPointTouchArea {
               anchors.fill: parent
               onPressed: {
                   controller.xAxis = -1
                   activeLevel.player1.tank.tankBody.source="../../assets/images/p1_left.png"
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
            activeLevel.player1.tank.tankBody.source="../../assets/images/p1_up.png"
            activeLevel.player1.rotate = 1
            activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*ourMoveV)
         }else
         if(actionName == "down" ) {
            activeLevel.player1.tank.tankBody.source="../../assets/images/p1_down.png"
            activeLevel.player1.rotate = 3
            activeLevel.player1.tank.boxCollider.force=Qt.point(0,-controller.yAxis*ourMoveV)
         }else
         if(actionName == "left") {
            activeLevel.player1.tank.tankBody.source="../../assets/images/p1_left.png"
            activeLevel.player1.rotate = 4
            activeLevel.player1.tank.boxCollider.force=Qt.point(controller.xAxis*ourMoveV,0)
         }else
         if(actionName == "right" ) {
            activeLevel.player1.tank.tankBody.source="../../assets/images/p1_right.png"
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
             startfire.play()
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
//     function setLoadrsource(){
//         if(activeLevelFileName=="")
//             return "";
//         else{
//             if(openlevel2&&activeLevelFileName=="Level2"){
//                 return "../levels/" + activeLevelFileName +".qml"
//             }else if(openlevel3&&activeLevelFileName=="Level3"){
//                 return "../levels/" + activeLevelFileName +".qml"
//             }else if(openlevel4&&activeLevelFileName=="Level4"){
//                 return "../levels/" + activeLevelFileName +".qml"
//             }else if(activeLevelFileName=="Level1"){
//                 return "../levels/" + activeLevelFileName +".qml"
//             }else{
//                 return "";
//             }
//         }
//     }
}
