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
  property int rotate : 1
  property int life: 1
  property int gameOverp : 0
  property bool activateHitShield: false          // activate shield for short after a hit
  property int activeHitShieldCounter: 0          // count from 0 to 5 every 100 millisecond after being hit by a bullet


  // each player controls a tank
  Tank {
    //property bool currentlyBeaming: false   // whether the player is currently teleporting with the igloos or not
    id: tank
    tankBody.source: variationType === "p1" ? "../../images/p1_up.png" : "../../images/p2_up.png"
    //this is Tank's variationType!!
  }

  Timer {
    id: timerPlayer
    interval: 100; running: true; repeat: true;

    // increase the powerUp timers every 100ms and deactive the effects after a certain time
    // show the current powerUp effects
    onTriggered: {
//      if (activateShield) {
//        tank.shield.opacity = 1
//        activeShieldCounter ++;
//      }
//      if (activeShieldCounter === 80) {
//        activateShield = false;
//        activeShieldCounter = 0;
//      }
//      if (activateShield == false) {
//        tank.shield.opacity = 0
//      }

      if (activateHitShield) {
        activeHitShieldCounter ++;
        tank.opacity = 0.5;
      }
      if (activeHitShieldCounter === 30) {
        activateHitShield = false;
        activeHitShieldCounter = 0;
        tank.opacity = 1;
      }
    }
  }

  function beShoted(){

      if(!activateHitShield){
          life--;
          console.log("aaaaah")
          activateHitShield=true;

              tank.x=tank.originX;
              tank.y=tank.originY;
              player.rotate=0;
              if(variationType==="p1")tank.tankBody.source="../../images/p1_up.png"
              if(variationType==="p2")tank.tankBody.source="../../images/p2_up.png"

      }

      if(life===0){
          gameWindow.numPlayerDead++;
          if(variationType==="p1")gameWindow.player1Dead=1;
          player.destroy();

//          var toRemoveEntityTypes = ["singleBullet","p1","p2","enemy"];
//          entityManager.removeEntitiesByFilter(toRemoveEntityTypes);
      }
}

//  function gameOver(){
//      GameInfo.gameOver=1;
//      var toRemoveEntityTypes = ["singleBullet"];
//      entityManager.removeEntitiesByFilter(toRemoveEntityTypes);
//  }

}
