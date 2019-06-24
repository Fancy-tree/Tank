import QtQuick 2.0
import Felgo 3.0
import "../../entities"

// the shield protects the player for a certain amount of time
EntityBase {
  id: propSpeedUp
  entityId : "propSpeedUp"
  entityType: "propSpeedUp"

  width: 12
  height: width

  x: start.x
  y: start.y

  // make the start and velocity vectors accessible from outside
  property point start
  property point velocity

  property int propSpeedUpAppearTime: 10000//道具存在时间
  property int propSpeedUpIsAppear: 0


  // count entities on the field
  onEntityCreated: propSpeedUpIsAppear=1

  Image {
    id: propSpeedUpImage
    width: parent.width
    height: parent.height
    source: "../../../assets/images/prop_speedUp.png"
    anchors.centerIn: parent

  }

  BoxCollider {
    id: boxCollider
    anchors.fill: propSpeedUpImage
    anchors.centerIn: parent
    sensor:true

    fixture.onBeginContact: {
      // the powerUp collides with the child collider of the player
      var collidedEntity = other.getBody().target;
        var otherEntityId = collidedEntity.entityId;

      // if one of the players gets in contact with the shield powerUp, the shield will activate and the timer resets
      // the powerUp itself gets destroyed and removed from the counter
      if (otherEntityId.substring(0, 2) === "p1"){
        //collidedEntity.plingSound.play();
        if(collidedEntity.parent.activateSpeedUp){//防止速度叠加
            collidedEntity.parent.activeSpeedUpCounter = 2

        }else{
            collidedEntity.parent.activateSpeedUp = true
            collidedEntity.parent.activeSpeedUpCounter = 0
        }

        propSpeedUp.destroy()
        //GameInfo.powerUpCount -= 1
      } else if (otherEntityId.substring(0, 2) === "p2"){
        //collidedEntity.plingSound.play();
          if(collidedEntity.parent.activateSpeedUp){
              collidedEntity.parent.activeSpeedUpCounter = 2

          }else{
              collidedEntity.parent.activateSpeedUp = true
              collidedEntity.parent.activeSpeedUpCounter = 0
          }
        propSpeedUp.destroy()
        //GameInfo.powerUpCount -= 1
      }
    }
  }

  // animate the bullet along its x-axis
  MovementAnimation {
    target: propSpeedUp
    property: "x"
    velocity: propSpeedUp.velocity.x
    running: true
  }

  // animate the bullet along its y-axis
  MovementAnimation {
    target: propSpeedUp
    property: "y"
    velocity: propSpeedUp.velocity.y
    running: true

  }

  Timer{
     id:timer
     interval:propSpeedUpAppearTime
     running: propSpeedUpIsAppear
     onTriggered: {
        propSpeedUpIsAppear=0;
        propSpeedUp.destroy();

     }

  }

  //闪烁
    property int count: 1
    Timer{
       id:timer2
       interval:300
       running:  propSpeedUpIsAppear
       repeat: true
       onTriggered: {
           if(count%2===1)propSpeedUp.opacity=0
           else propSpeedUp.opacity=1
           count++;

       }
    }

}




