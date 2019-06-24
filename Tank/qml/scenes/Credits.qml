import Felgo 3.0
import QtQuick 2.0
import QtQuick 2.12
import "../common"
import"../../assets/images"
import com.mycompany 1.0
SceneBase {
        //无论输赢都记分
    signal backPressed
    property alias record1: record1
    property alias record2: record2
    property alias record3: record3
    property alias record4: record4
    Rectangle {
      anchors.fill: parent.gameWindowAnchorItem
      Image {
          anchors.fill: parent
          source: "../../assets/images/24.jpg"
      }
    }


    Timer{
        id:loaddata
        interval: 10;running: true
        repeat: true
        onTriggered:{
            gameWindow.data3.loadData()
            record1.text=gameWindow.data3.level1highscore
            record2.text=gameWindow.data3.level2highscore
            record3.text=gameWindow.data3.level3highscore
            record4.text=gameWindow.data3.level4highscore

        }
    }


    // the "logo"
    Text {
        id:credit
      anchors.horizontalCenter: parent.horizontalCenter
      y: 30
      font.pixelSize: 30//
      color: "#e9e9e9"
      text: "Credits"
    }

    Text{
        id:record
        anchors.top: credit.bottom
        anchors.right: parent.right
        font.pixelSize: 30
        color: "white"

        width: parent.width/2
        horizontalAlignment: Text.AlignHCenter//(1)
        verticalAlignment: Text.AlignVCenter//(2)
        text:"Record"
    }
    Text{
        id:level
        anchors.top: credit.bottom
        anchors.left: parent.left
        font.pixelSize: 30
        color: "white"

        width: parent.width/2
        horizontalAlignment: Text.AlignHCenter//(1)
        verticalAlignment: Text.AlignVCenter//(2)
        text:"Level"
    }
    Text{
        id:level1
        anchors.top: level.bottom
        anchors.left: parent.left
        font.pixelSize: 30
        width: parent.width/2
        //color: "white"
        horizontalAlignment: Text.AlignHCenter//(1)
        verticalAlignment: Text.AlignVCenter//(2)
        text:"Level  1"
    }
    Text{
        id:level2
        anchors.top: level1.bottom
        anchors.left: parent.left
        font.pixelSize: 30
        width: parent.width/2
        //color: "white"
        horizontalAlignment: Text.AlignHCenter//(1)
        verticalAlignment: Text.AlignVCenter//(2)
        text:"Level  2"
    }
    Text{
        id:level3
        anchors.top: level2.bottom
        anchors.left: parent.left
        font.pixelSize: 30
        width: parent.width/2
        //color: "white"
        horizontalAlignment: Text.AlignHCenter//(1)
        verticalAlignment: Text.AlignVCenter//(2)
        text:"Level  3"
    }
    Text{
        id:level4
        anchors.top: level3.bottom
        anchors.left: parent.left
        font.pixelSize: 30
        width: parent.width/2
        //color: "white"
        horizontalAlignment: Text.AlignHCenter//(1)
        verticalAlignment: Text.AlignVCenter//(2)
        text:"Level  4"
    }
    Text{
        id:record1
        anchors.top: record.bottom
        anchors.right: parent.right
        font.pixelSize: 30
        width: parent.width/2
        //color: "white"
        horizontalAlignment: Text.AlignHCenter//(1)
        verticalAlignment: Text.AlignVCenter//(2)
        text:"0"
    }

    Text{
        id:record2
        anchors.top: record1.bottom
        anchors.right: parent.right
        font.pixelSize: 30
        width: parent.width/2
        //color: "white"
        horizontalAlignment: Text.AlignHCenter//(1)
        verticalAlignment: Text.AlignVCenter//(2)
        text:"0"
    }
    Text{
        id:record3
        anchors.top: record2.bottom
        anchors.right: parent.right
        font.pixelSize: 30
        width: parent.width/2
        //color: "white"
        horizontalAlignment: Text.AlignHCenter//(1)
        verticalAlignment: Text.AlignVCenter//(2)
        text:"0"
    }
    Text{
        id:record4
        anchors.top: record3.bottom
        anchors.right: parent.right
        font.pixelSize: 30
        width: parent.width/2
        //color: "white"
        horizontalAlignment: Text.AlignHCenter//(1)
        verticalAlignment: Text.AlignVCenter//(2)
        text:"0"
    }

    Column {
      anchors.bottom: parent.bottom
      anchors.horizontalCenter: parent.horizontalCenter
      topPadding: 50
      spacing: 10

      MenuButton {
          text: "Back"

        onClicked: backPressed()
      }
    }
}
