import Felgo 3.0
import QtQuick 2.0
import "../levels"
import "../"

//home is what you should protect
EntityBase {
    id: home
    entityId: "home"
    entityType: "home"

    width: rectangle.height/14
    height:width


    property alias redWsallBody: homeBody
    property alias circleCollider: boxCollider

    property int life : 1
    property int gameOverh : 0

    Image {
      id: homeBody
      anchors.fill: parent
      source: "../../images/home.png"
    }

    BoxCollider {
      id: boxCollider
      bodyType: Body.Static
    }

    function beShoted(){
        life--;
        if(life===0){
            homeBody.source="../../images/homeBroke.png";
            gameOverh=1;
            gameWindow.gameOver=1;//家毁游戏结束
            var toRemoveEntityTypes = ["singleBullet","p1","p2","enemy"];
            entityManager.removeEntitiesByFilter(toRemoveEntityTypes);
            //entityManager.removeAllEntities();
        }
    }
//    function gameOver(){
//        GameInfo.gameOver=1;
//        var toRemoveEntityTypes = ["singleBullet"];
//        entityManager.removeEntitiesByFilter(toRemoveEntityTypes);
//    }

}
