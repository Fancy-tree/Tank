import QtQuick 2.0
import Felgo 3.0
import "../../entities"

// the shield protects the player for a certain amount of time
EntityBase {
  id: propShield
  entityId : "propShield"
  entityType: "propShield"

  width: 10
  height: width

  x: start.x
  y: start.y

  // make the start and velocity vectors accessible from outside
  property point start
  property point velocity

  property int propShieldAppearTime: 5000//道具存在时间
  property int propShieldIsAppear: 0


  // count entities on the field
  onEntityCreated: propShieldIsAppear=1

  Image {
    id: propShieldImage
    width: parent.width
    height: parent.height
    source: "../../../images/prop_shield.png"
    anchors.centerIn: parent

  }

  BoxCollider {
    id: boxCollider
    anchors.fill: propShieldImage
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
        collidedEntity.parent.activateShield = true
        collidedEntity.parent.activeShieldCounter = 0
        propShield.destroy()
        //GameInfo.powerUpCount -= 1
      } else if (otherEntityId.substring(0, 2) === "p2"){
        //collidedEntity.plingSound.play();
        collidedEntity.parent.activateShield = true
        collidedEntity.parent.activeShieldCounter = 0
        propShield.destroy()
        //GameInfo.powerUpCount -= 1
      }
    }
  }

  // animate the bullet along its x-axis
  MovementAnimation {
    target: propShield
    property: "x"
    velocity: propShield.velocity.x
    running: true
  }

  // animate the bullet along its y-axis
  MovementAnimation {
    target: propShield
    property: "y"
    velocity: propShield.velocity.y
    running: true

  }

  Timer{
     id:timer
     interval:propShieldAppearTime
     running: propShieldIsAppear
     onTriggered: {
        propShieldIsAppear=0;
        propShield.destroy();

     }

  }
}



