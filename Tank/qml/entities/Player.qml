import QtQuick 2.0
import Felgo 3.0
import "../levels"
import ".."

EntityBase {
  id: player
  variationType: "p1"
  entityId: "player"
  entityType: "player"

  property int life: 100
  property alias tank: tank

  // each player controls a tank
  Tank {
    //property bool currentlyBeaming: false   // whether the player is currently teleporting with the igloos or not
    id: tank
    rotation: 0
    tankBody.source: variationType === "p1" ? "../../images/p1_up.png" : "../../images/p2_up.png"
    //this is Tank's variationType!!
  }

  function rotation() {

  }

}
