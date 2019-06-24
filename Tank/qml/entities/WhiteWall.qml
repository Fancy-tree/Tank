import Felgo 3.0
import QtQuick 2.0
import "../levels"

//white wall can not be distoried
EntityBase {
    id:wallWhite
    entityId: "whiteWall"
    entityType: "whiteWall"
    width: 15
    height: 15

    property alias whiteWallBody: whiteWallBody
    property alias circleCollider: boxCollider

    Image {
      id: whiteWallBody
      anchors.fill:parent
      source:"../../assets/images/whiteWall.png"
    }


    BoxCollider {
      id: boxCollider
      bodyType: Body.Static
    }

    function beShoted(){

    }

}
