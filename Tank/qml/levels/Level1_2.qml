import QtQuick 2.0
 import Felgo 3.0
 import "../common" as Common
import "../levels"
import "../entities"
//import "../entities/powerUps"


 Common.LevelBase2 {
   id: scene
   levelName: "Level1"

   RedWall{
    entityId: "redWall1"
    id: redWall1
    anchors {
      top: scene.top
      left: scene.left
      topMargin: scene.height / 2 -5

    }
    redWallBody.source: "../../images/redWall.png"
   }

   WhiteWall{
    entityId: "whiteWall1"
    id: whiteWall1
    anchors {
      top: redWall1.bottom
    }
    whiteWallBody.source: "../../images/whiteWall.png"
   }

 }
