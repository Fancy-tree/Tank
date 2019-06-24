import Felgo 3.0
import QtQuick 2.0
import "../levels"
import "../common"
import"../../assets/images"

//white wall can not be distoried
EntityBase {
    id:wallWhites
    entityId: "whiteWalls"
    entityType: "whiteWalls"
    height: LevelBase.rectangle.height/14
    width: height

    property alias whiteWallsBody: whiteWallsBody
    property alias circleCollider: boxCollider

    Image {
      id: whiteWallsBody
      anchors.fill:parent
      source:"../../assets/images/steels.png"
    }

    BoxCollider {
      id: boxCollider
      bodyType: Body.Static
    }

    function beShoted(){

    }
}
