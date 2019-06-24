import QtQuick 2.0
import Felgo 3.0
import "../../entities"

// the shield protects the player for a certain amount of time
EntityBase {
  id: propLifeAdd
  entityId : "propLifeAdd"
  entityType: "propLifeAdd"

  width: 12
  height: width

  x: start.x
  y: start.y

  // make the start and velocity vectors accessible from outside
  property point start
  property point velocity

  property int propLifeAddAppearTime: 10000//道具存在时间
  property int propLifeAddIsAppear: 0


  // count entities on the field
  onEntityCreated: propLifeAddIsAppear=1

  Image {
    id: propLifeAddImage
    width: parent.width
    height: parent.height
    source: "../../../assets/images/prop_lifeAdd.png"
    anchors.centerIn: parent

  }

  BoxCollider {
    id: boxCollider
    anchors.fill: propLifeAddImage
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
        collidedEntity.parent.life++;
        propLifeAdd.destroy()
        //GameInfo.powerUpCount -= 1
      } else if (otherEntityId.substring(0, 2) === "p2"){
        //collidedEntity.plingSound.play();
        collidedEntity.parent.life++;
        propLifeAdd.destroy()
        //GameInfo.powerUpCount -= 1
      }
    }
  }

  // animate the bullet along its x-axis
  MovementAnimation {
    target: propLifeAdd
    property: "x"
    velocity: propLifeAdd.velocity.x
    running: true
  }

  // animate the bullet along its y-axis
  MovementAnimation {
    target: propLifeAdd
    property: "y"
    velocity: propLifeAdd.velocity.y
    running: true

  }

  Timer{
     id:timer
     interval:propLifeAddAppearTime
     running: propLifeAddIsAppear
     onTriggered: {
        propLifeAddIsAppear=0;
        propLifeAdd.destroy();

     }

  }

//闪烁
  property int count: 1
  Timer{
     id:timer2
     interval:300
     running: propLifeAddIsAppear
     repeat: true
     onTriggered: {
         if(count%2===1)propLifeAdd.opacity=0
         else propLifeAdd.opacity=1
         count++;

     }
  }



}



