import QtQuick 2.0
import Felgo 3.0
import "../levels"


//red wall can easily be distoried
EntityBase {
  id: wallred
  entityType: "Wallred"
  entityId: "Wallred"

  width: 15
  height: 15

  property alias redWallBody: redWallBody
  property alias circleCollider: boxCollider

  Image {
    id: redWallBody
    anchors.fill: parent
    source:"../../images/redWall.png"
  }

  BoxCollider {
    id: boxCollider
    bodyType: Body.Static

  }
}

