import QtQuick 2.0
import QtQuick 2.2
import Felgo 3.0
import "../levels"
import "../"



EntityBase {
  id: enemy
  variationType: "enemy1"
  entityType: "enemy"
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
  property int v: 4000//敌人速度



  // the visual body of the tank
  Image {
    id: tankBody
    anchors.fill:parent
    source: "../../images/p1_down.png"
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

    force: Qt.point(0,v)
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
            force=Qt.point(0,-v)
            rotate=1;
            tankBody.source="../../images/p1_up.png"
        }else if(num===2){
            force=Qt.point(v,0)
            rotate=2;
            tankBody.source="../../images/p1_right.png"
        }else if(num===3){
            force=Qt.point(0,v)
            rotate=3;
            tankBody.source="../../images/p1_down.png"
        }else if(num===4){
            force=Qt.point(-v,0)
            rotate=4;
            tankBody.source="../../images/p1_left.png"
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
//                 boxCollider.force=Qt.point(0,-v)
//                 rotate=1;
//                 tankBody.source="../../images/p1_up.png"

             }else if(num===2){
                 boxCollider.force=Qt.point(v,0)
                 rotate=2;
                 tankBody.source="../../images/p1_right.png"
             }else if(num===3){
                 boxCollider.force=Qt.point(0,v)
                 rotate=3;
                 tankBody.source="../../images/p1_down.png"
             }else if(num===4){
                 boxCollider.force=Qt.point(-v,0)
                 rotate=4;
                 tankBody.source="../../images/p1_left.png"
             }else{
                 console.log("rand error")
             }
             console.log("change")

             var num2=getRandomNum(500,4000);
             interval=num2;//随机时间改变一次方向

     }

  }


// property int ox:start.x
// property int oy:start.y

// Timer{
//    id:timer2
//    interval: 100
//    repeat: true
//    running: true
//    onTriggered: {
//        if(ox===enemy.x && oy===enemy.y){
//            var num=getRandomNum(1,4)
//            if(num===1){
//                boxCollider.force=Qt.point(0,-2000)
//                rotate=1;
//                tankBody.source="../../images/p1_up.png"

//            }else if(num===2){
//                boxCollider.force=Qt.point(2000,0)
//                rotate=2;
//                tankBody.source="../../images/p1_right.png"
//            }else if(num===3){
//                boxCollider.force=Qt.point(0,2000)
//                rotate=3;
//                tankBody.source="../../images/p1_down.png"
//            }else if(num===4){
//                boxCollider.force=Qt.point(-2000,0)
//                rotate=4;
//                tankBody.source="../../images/p1_left.png"
//            }else{
//                console.log("rand error")
//            }
//            console.log("change")
//        }
//        ox=enemy.x
//        oy=enemy.y
//    }

// }


Timer{
    id:timer4
    interval: 1000//每一段时间发射子弹
    repeat: true
    running: true
    onTriggered: {
        var startX=0
        var startY=0
        var xDirection=0 //
        var yDirection=0 //
        if(rotate===4){
            startX=enemy.x-5
            startY=enemy.y+height/2
            xDirection=-100
            yDirection=0
        }
        if(rotate===2){
            startX=enemy.x+width+5
            startY=enemy.y+height/2
            xDirection=100
            yDirection=0
        }
        if(rotate===3){
            startX=enemy.x+width/2
            startY=enemy.y+height+5
            xDirection=0
            yDirection=100
        }
        if(rotate===1){
            startX=enemy.x+width/2
            startY=enemy.y-5
            xDirection=0
            yDirection=-100
        }
        entityManager.createEntityFromUrlWithProperties(Qt.resolvedUrl("../entities/EvilBullet.qml"), {
                                                            "start" : Qt.point(startX, startY),
                                                            "velocity" : Qt.point(xDirection, yDirection),
                                                              "entityId":"evilBullet"
                                                            });

        var num2=getRandomNum(0,1000);
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
      if(life===0)enemy.destroy();
}

//  function gameOver(){
//      GameInfo.gameOver=1;
//      var toRemoveEntityTypes = ["singleBullet"];
//      entityManager.removeEntitiesByFilter(toRemoveEntityTypes);
//  }

}
