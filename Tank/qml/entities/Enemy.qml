import QtQuick 2.0
import QtQuick 2.2
import Felgo 3.0
import "../levels"
import "../"



EntityBase {
  id: enemy
  variationType: "enemy1"
  entityType: "enemy"
  entityId: "enemy"
  x: start.x
  y: start.y

  width: 21.4-5-2
  height: width

  property alias tankBody: tankBody
  property alias boxCollider: boxCollider
  property point start
  property point velocity

  property int life: 1
  property int rotate: 3
  property int enemyMoveV: 3000//敌人move速度
  property int enemyBulletV: 100//敌人Bullet速度
  property string imageName: "p1"

property int countId : 0//id数计算,消除Id重复警告



  // the visual body of the tank
  Image {
    id: tankBody
    anchors.fill:parent
    source: "../../images/"+imageName+"_down.png"
  }


  // holds the physical properties of the tank
  BoxCollider {
    //enabled: !GameInfo.gamePaused
    id: boxCollider
    //anchors.centerIn: parent

    density: 0
    friction: 0.4
    restitution: 0.4
    linearDamping: 100
    bullet: true

    force: Qt.point(0,enemyMoveV)
    fixture.onBeginContact: {
        if(rotate===1){
            enemy.y+=1;
        }else if(rotate===2){
            enemy.x-=1;
        }else if(rotate===3){
            enemy.y-=1;
        }else if(rotate===4){
            enemy.x+=1;
        }

        var num=getRandomNum(1,4)
        if(num===1){
            force=Qt.point(0,-enemyMoveV)
            rotate=1;
            tankBody.source="../../images/"+imageName+"_up.png"
        }else if(num===2){
            force=Qt.point(enemyMoveV,0)
            rotate=2;
            tankBody.source="../../images/"+imageName+"_right.png"
        }else if(num===3){
            force=Qt.point(0,enemyMoveV)
            rotate=3;
            tankBody.source="../../images/"+imageName+"_down.png"
        }else if(num===4){
            force=Qt.point(-enemyMoveV,0)
            rotate=4;
            tankBody.source="../../images/"+imageName+"_left.png"
        }else{
            console.log("rand error")
        }

    }

    //force: Qt.point(controller.xAxis*170*32,-controller.yAxis*170*32)
  }

 property double rand: Math.random()
 function getRandomNum(Min,Max){
    var Range = Max - Min;
     return (Min+Math.round(rand*Range));

 }


 Timer{
    id:timer
    interval: 30
    repeat: true
    running: true
    onTriggered: {
        rand=Math.random()
    }

 }

  Timer{
     id:timer3
     interval: 4000//每一段时间改变一次方向
     repeat: true
     running: true
     onTriggered: {

             var num=getRandomNum(1,4)
             if(num===1){
//                 boxCollider.force=Qt.point(0,-enemyMoveV)
//                 rotate=1;
//                 tankBody.source="../../images/"+imageName+"_up.png"

             }else if(num===2){
                 boxCollider.force=Qt.point(enemyMoveV,0)
                 rotate=2;
                 tankBody.source="../../images/"+imageName+"_right.png"
             }else if(num===3){
                 boxCollider.force=Qt.point(0,enemyMoveV)
                 rotate=3;
                 tankBody.source="../../images/"+imageName+"_down.png"
             }else if(num===4){
                 boxCollider.force=Qt.point(-enemyMoveV,0)
                 rotate=4;
                 tankBody.source="../../images/"+imageName+"_left.png"
             }else{
                 console.log("rand error")
             }
             console.log("change")

             var num2=getRandomNum(500,4000);
             interval=num2;//随机时间改变一次方向

     }

  }




Timer{
    id:timer4
    interval: 1000//每一段时间发射子弹 //敌人Bullet间隔
    repeat: true
    running: true
    onTriggered: {
        countId++;
        var startX=0
        var startY=0
        var xDirection=0 //
        var yDirection=0 //
        if(rotate===4){
            startX=enemy.x-5
            startY=enemy.y+height/2
            xDirection=-enemyBulletV
            yDirection=0
        }
        if(rotate===2){
            startX=enemy.x+width+5
            startY=enemy.y+height/2
            xDirection=enemyBulletV
            yDirection=0
        }
        if(rotate===3){
            startX=enemy.x+width/2
            startY=enemy.y+height+5
            xDirection=0
            yDirection=enemyBulletV
        }
        if(rotate===1){
            startX=enemy.x+width/2
            startY=enemy.y-5
            xDirection=0
            yDirection=-enemyBulletV
        }
        entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/EvilBullet.qml"), {
                                                            "start" : Qt.point(startX, startY),
                                                            "velocity" : Qt.point(xDirection, yDirection),
                                                              "entityId":"evilBullet"+countId
                                                            });

        var num2=getRandomNum(0,1000);//敌人Bullet间隔
        interval=num2;//随机时间发射子弹
    }



}

  MovementAnimation {
    target: enemy
    property: "x"
    velocity: enemy.velocity.x
    running: true

  }

  MovementAnimation {
    target: enemy
    property: "y"
    velocity: enemy.velocity.y
    running: true

  }


  function beShoted(){

      life--;
      console.log("yaaaah")
      if(life===0){
          if(variationType==="boss"){gameWindow.youWin=1;}//boss打败游戏胜利
          var num1=getRandomNum(0,8);//随机道具
          //num1=4
          if(num1===3){
              var startX=enemy.x
              var startY=enemy.y
              var xDirection=0 //
              var yDirection=0 //

              entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/props/Shield.qml"), {
                                                                "start" : Qt.point(startX, startY),
                                                                "velocity" : Qt.point(xDirection, yDirection),
                                                                  "entityId":"propShield"+countId,
                                                                  "entityType": "propLifeAdd"
                                                                });
          }if(num1===2){
              var startX2=enemy.x
              var startY2=enemy.y
              var xDirection2=0 //
              var yDirection2=0 //

              entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/props/LifeAdd.qml"), {
                                                                "start" : Qt.point(startX2, startY2),
                                                                "velocity" : Qt.point(xDirection2, yDirection2),
                                                                  "entityId":"propLifeAdd"+countId,
                                                                  "entityType": "propLifeAdd"
                                                                });
          }if(num1===4){
              var startX3=enemy.x
              var startY3=enemy.y
              var xDirection3=0 //
              var yDirection3=0 //

              entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/props/SpeedUp.qml"), {
                                                                "start" : Qt.point(startX3, startY3),
                                                                "velocity" : Qt.point(xDirection3, yDirection3),
                                                                  "entityId":"propSpeedUp"+countId,
                                                                  "entityType": "propSpeedUp"
                                                                });
          }

          enemy.destroy();
          gameScene.score+=200;

      }
}



}
