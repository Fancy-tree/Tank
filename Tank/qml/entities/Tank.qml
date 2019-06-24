import Felgo 3.0
import QtQuick 2.0
import "../levels"
import "../scenes"

EntityBase {
    id: tank
    entityType: "tank"
    entityId: "tank"
    variationType: "p1"

    x: originX
    y: originY
    width: rectangle.width/13-3-1
    height: width

    property alias tankBody: tankBody
    property alias boxCollider: boxCollider
    property double originX : 10
    property double originY : 10



    // the visual body of the tank
    Image {
      id: tankBody
      anchors.fill:parent
      //anchors.fill: parent
    }

    //shield effect for powerup shield
    Image {
      opacity: 0
      id: shield
      width: 35
      height: 35
      anchors.centerIn: parent
      //source: "../../assets/img/Shield.png"
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

      //force: Qt.point(controller.xAxis*170*32,-controller.yAxis*170*32)
      //bodyType: Body.Dynamic
    }


}
