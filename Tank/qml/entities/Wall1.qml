import Felgo 3.0
import QtQuick 2.0
import"../../images"


EntityBase {

    entityId: "wall2"
    entityType: "wall2"
    Image {
        id: wall2Body
        anchors.fill: parent
        source: "../../images/Wall2.png"
    }
    BoxCollider{
        id:boxCollider
        anchors.fill:wall2Body
        bodyType: Body.Static
    }

    function beShoted(){

    }
}
