import QtQuick 2.0
import QtQuick 2.2
import Felgo 3.0
import "../levels"
import "../"
import"../../assets/images"

// the splat image appears every time a snowball or icicle hits an object
EntityBase {
    id: boom
    entityType: "boom"
    entityId: "boom"
    width: 21.4-5-2
    height: width
    x: start.x
    y: start.y

    // make the start and velocity vectors accessible from outside
    property point start

    property alias splatTimer: boomTimer

    Image {
        width: 21.4-5
        height: width

        anchors.centerIn: parent
        source: "../../assets/images/blast7.png"
    }

    onEntityCreated: boomTimer.start()

    //       show the image for a small period of time and remove it
    Timer {
        id: boomTimer
        interval: 1000
        //        running: false
        repeat: false

        onTriggered:{
            boom.destroy();
        }
    }
    //    }



    //    TexturePackerAnimatedSprite{
    //        id:image
    //        source: "../../images/blast/blast.json"
    //        frameNames: ["blast1.png","blast2.png","blast3.png","blast4.png","blast5.png","blast6.png","blast7.png","blast8.png"]
    ////        interpolate: false
    //        frameRate: 3
    //        anchors.fill: parent
    //    }
    //  BoxCollider{
    //       id: boxCollider
    //       anchors.fill: image
    //       bodyType: Body.Static
    //   }
}

