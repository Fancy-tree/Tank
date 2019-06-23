import QtQuick 2.0
import Felgo 3.0
import "../levels"
import "../"


EntityBase {
  id: player
  variationType: "p1"
  //entityId: "player"
  entityType: "player"

  property alias tank: tank
  //property int life: 10

  // each player controls a tank
  Tank {
    //property bool currentlyBeaming: false   // whether the player is currently teleporting with the igloos or not
    id: tank
    rotation: 0
    tankBody.source: variationType === "p1" ? "../../images/p1_up.png" : "../../images/p2_up.png"
    //this is Tank's variationType!!
  }

  function beShoted(){

  }

//  function gameOver(){
//      GameInfo.gameOver=1;
//      var toRemoveEntityTypes = ["singleBullet"];
//      entityManager.removeEntitiesByFilter(toRemoveEntityTypes);
//  }

}
