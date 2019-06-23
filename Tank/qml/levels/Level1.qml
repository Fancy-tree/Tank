import QtQuick 2.0
 import Felgo 3.0
 import "../common" as Common
import ".."
import "../levels"
import "../entities"
//import "../entities/powerUps"


 Common.LevelBase {
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
    entityId: "redWall1"
    id: whiteWall1
    anchors {
      top: redWall1.bottom
      //left: redWall1.left
      //topMargin: scene.height / 2 -5
      //leftMargin: tree5.treeBody.width - 18
    }
    whiteWallBody.source: "../../images/whiteWall.png"
   }

 }
