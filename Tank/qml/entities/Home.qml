import Felgo 3.0
import QtQuick 2.0
import "../levels"

//home is what you should protect
EntityBase {
    id: home
    entityId: "home"
    entityType: "home"
    width: 30
    height: 30


    property alias redWsallBody: homeBody
    property alias circleCollider: boxCollider

    Image {
      id: homeBody
      anchors.fill: parent
      source: "../../images/home.png"
    }

    BoxCollider {
      id: boxCollider
      bodyType: Body.Static
    }

}
