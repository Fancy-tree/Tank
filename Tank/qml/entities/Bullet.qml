import Felgo 3.0
import QtQuick 2.0
import "../levels"

EntityBase {
  id: singleBullet
  entityId: "singleBullet"
  entityType: "singleBullet"
  x: start.x
  y: start.y

  // make the start and velocity vectors accessible from outside
  property point start
  property point velocity
  property int bulletType // 0 normal bullet, 1 strong bullet

  // the visual representation of the bullet depends on the bulletType
  Image {
    width: 7
    height: 14
    //source: bulletType ? "../../assets/img/Icicle.png" :  "../../assets/img/Snowball.png"
    anchors.centerIn: parent
  }

  BoxCollider {
    id: boxCollider
    width: 10
    height: 10
    anchors.fill: parent
    collisionTestingOnlyMode: true
    density: 0
    friction: 0
    restitution: 0
    body.bullet: true
    body.fixedRotation: false // if set to true the physics engine will NOT apply rotation to it

    // handle the collision
    fixture.onBeginContact: {
      var collidedEntity = other.getBody().target;
      var otherEntityId = collidedEntity.entityId;
      var otherEntityParent = collidedEntity.parent;

      // destroy the bullet if it collided with anything but a lake or powerup
//      if (otherEntityId.substring(0, 3) !== "lak" && otherEntityId.substring(0, 3) !== "pow") {
        singleBullet.destroy();

//        // show a splat image for a certain amount of time after removing the bullet
//        entityManager.createEntityFromUrlWithProperties(
//              Qt.resolvedUrl("Splat.qml"), {
//                "z": 1,
//                "x": singleBullet.x,
//                "y": singleBullet.y,
//                "rotation": singleBullet.rotation
//              }
//              );

        // check if it hit a player
        if (otherEntityId.substring(0, 4) === "tank") {
          // call damage method on playerred/playerblue
          otherEntityParent.onDamageWithBulletType(bulletType);
        }
      }
    }


  // animate the bullet along its x-axis
  MovementAnimation {
    target: singleBullet
    property: "x"
    velocity: singleBullet.velocity.x
    running: true
  }

  // animate the bullet along its y-axis
  MovementAnimation {
    target: singleBullet
    property: "y"
    velocity: singleBullet.velocity.y
    running: true
    onStopped: {
      singleBullet.destroy()
    }
  }
}
