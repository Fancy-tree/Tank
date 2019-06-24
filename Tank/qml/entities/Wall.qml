import Felgo 3.0
import QtQuick 2.0
import"../../assets/images"

EntityBase {

    entityId: "wall1"
    entityType: "wall1"
    Image {
        id: wall1Body
        anchors.fill: parent
        source: "../../assets/images/Wall.png"
    }
    BoxCollider{
        id:boxCollider
        anchors.fill:wall1Body
        bodyType: Body.Static
    }

    function beShoted(){

    }

}
