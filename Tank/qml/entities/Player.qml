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
  property int life: 5
  property int gameOverp : 0
  property bool activateHitShield: false          // activate shield for short after a hit
  property int activeHitShieldCounter: 0          // count from 0 to 5 every 100 millisecond after being hit by a bullet
  property bool activateShield: false             // for activating powerUpShield
  property int activeShieldCounter: 0             // count from 0 to 80 every 100 millisecond for the duration of active powerUps
  property bool activateSpeedUp: false        // for activating powerUpAccelerator
  property int activeSpeedUpCounter: 0        // count from 0 to 80 every 100 millisecond for the duration of active powerUps

  // each player controls a tank
  Tank {
    //property bool currentlyBeaming: false   // whether the player is currently teleporting with the igloos or not
    id: tank
    tankBody.source: variationType === "p1" ? "../../assets/images/p1_up.png" : "../../assets/simages/p2_up.png"
    //this is Tank's variationType!!
  }

  Timer {
    id: timerPlayer
    interval: 100; running: true; repeat: true;

    // increase the powerUp timers every 100ms and deactive the effects after a certain time
    // show the current powerUp effects
    onTriggered: {
      if (activateShield) {
        tank.opacity = 0.5;
        activeShieldCounter ++;
      }
      if (activeShieldCounter === 80) {
        activateShield = false;
        activeShieldCounter = 0;
      }


      if (activateHitShield) {
        activeHitShieldCounter ++;
        tank.opacity = 0.5;
      }
      if (activeHitShieldCounter === 30) {
        activateHitShield = false;
        activeHitShieldCounter = 0;
        tank.opacity = 1;
      }

      if (activateSpeedUp) {
        activeSpeedUpCounter ++;
        if(activeSpeedUpCounter===1){//防止速度叠加
            gameScene.ourMoveV+=5000
            gameScene.ourBulletI-=100
        }
      }
      if (activeSpeedUpCounter === 80) {
        activateSpeedUp = false;
        activeSpeedUpCounter = 0;
        gameScene.ourMoveV-=5000
        gameScene.ourBulletI+=100

      }
    }
  }

  function beShoted(){

      if(!activateHitShield && !activateShield){
          life--;
          console.log("aaaaah")
          startblast.play()
          activateHitShield=true;

              tank.x=tank.originX;
              tank.y=tank.originY;
              add.start()
              player.rotate=0;
              if(variationType==="p1")tank.tankBody.source="../../assets/images/p1_up.png"
//              if(variationType==="p2")tank.tankBody.source="../../images/p2_up.png"

      }

      if(life===0){
          gameWindow.numPlayerDead++;
          if(variationType==="p1")gameWindow.player1Dead=1;
          player.destroy();

//          var toRemoveEntityTypes = ["singleBullet","p1","p2","enemy"];
//          entityManager.removeEntitiesByFilter(toRemoveEntityTypes);
      }
}
  SoundEffect {
    volume: 0.3
    id: startblast
    // an ogg file is not playable on windows, because the extension is not supported!
    source: "../../assets/send/blast.wav"
  }

//  function gameOver(){
//      GameInfo.gameOver=1;
//      var toRemoveEntityTypes = ["singleBullet"];
//      entityManager.removeEntitiesByFilter(toRemoveEntityTypes);
//  }
  SoundEffect {
    volume: 0.3
    id: startadd
    // an ogg file is not playable on windows, because the extension is not supported!
    source: "../../assets/send/add.wav"
  }
  Timer{
      id:add
      interval: 1000
      onTriggered: startadd.play()
  }

}
