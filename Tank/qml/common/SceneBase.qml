import Felgo 3.0
import QtQuick 2.0

Scene {
    id: sceneBase
    opacity: 0
    visible: opacity > 0
    enabled: visible
    Behavior on opacity {
        NumberAnimation {property: "opacity"; easing.type: Easing.InOutQuad}
    }

}
