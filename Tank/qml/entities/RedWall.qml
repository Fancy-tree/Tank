import QtQuick 2.0
import Felgo 3.0
import "../levels"


//red wall can easily be distoried
EntityBase {
  id: wallred

  entityId: "redWall"
  entityType: "redWall"

  width: 15
  height: 15

  property alias redWallBody: redWallBody
  property alias circleCollider: boxCollider

  property int life : 1


  Image {
    id: redWallBody
    anchors.fill: parent
    source:"../../assets/images/redWall.png"
  }

  BoxCollider {
    id: boxCollider
    bodyType: Body.Static

  }

  function beShoted(){
      life--;
      if(life===0)wallred.destroy();
  }
}

