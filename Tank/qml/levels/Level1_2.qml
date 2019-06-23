import QtQuick 2.0
import Felgo 3.0
import "../common" as Common
import ".."
import "../levels"
import "../entities"
//import "../entities/powerUps"


Common.LevelBase2 {
    id: scene
    levelName: "Level1"
    property double cow: rectangle.height/14/2
    property double column: rectangle.height/14/2
    //   RedWall{
    //    entityId: "redWall1"
    //    id: redWall1
    //    height:cow
    //    width:column
    //    anchors {
    //      top: scene.top
    //      left: scene.left
    //      topMargin:cow*15
    //      //leftMargin: tree5.treeBody.width - 18
    //    }
    //    //redWallBody.source: "../../images/redWalls.png"
    //   }

    WhiteWall{
        entityId: "redWall1"
        id: whiteWall1
        height:cow
        width:column
        anchors {
            top:rectangle.top
            left:rectangle.left
            topMargin:cow*15
            leftMargin:0
            //left: redWall1.left
            //topMargin: scene.height / 2 -5
            //leftMargin: tree5.treeBody.width - 18
        }
        //whiteWallBody.source: "../../images/whiteWall.png"
    }
    WhiteWall{
        entityId: "redWall2"
        id: whiteWal2
        height:cow
        width:column
        anchors {
            left: whiteWall1.right
            leftMargin:0
            verticalCenter:whiteWall1.verticalCenter
        }
    }
    WhiteWall{
        entityId: "redWall7"
        id: whiteWall7
        height:cow
        width:column
        anchors {
            top:whiteWall1.top
            left:whiteWall1.left
            leftMargin:cow*24

        }
    }
    WhiteWall{
        entityId: "redWall8"
        id: whiteWal8
        height:cow
        width:column
        anchors {
            left: whiteWall1.left
            leftMargin:cow*25
            top:whiteWall1.top
        }
    }
    RedWall{
        id:redwall1
        entityId:"redwall1"
        height:cow
        width:column
        anchors {
            top:rectangle.top
            left:rectangle.left
            topMargin:cow*2
            leftMargin:column*2
        }
    }
    RedWall{
        id:redwall2
        entityId:"redwall2"
        height:cow
        width:column
        anchors {
            top:redwall1.top
            left:redwall1.left
            leftMargin:cow

        }
    }
    RedWall{
        id:redwall3
        entityId:"redwall3"
        height:cow
        width:column
        anchors {
            top:redwall1.top
            topMargin:cow
            left:redwall1.left

        }
    }
    RedWall{
        id:redwall4
        entityId:"redwall4"
        height:cow
        width:column
        anchors {
            top:redwall2.top
            topMargin:cow
            left:redwall2.left

        }
    }
    RedWall{
        id:redwall5
        entityId:"redwall5"
        height:cow
        width:column
        anchors {
            top:redwall1.top
            topMargin:cow*2
            left:redwall1.left

        }
    }
    RedWall{
        id:redwall6
        entityId:"redwall6"
        height:cow
        width:column
        anchors {
            top:redwall2.top
            topMargin:cow*2
            left:redwall2.left

        }
    }
    RedWall{
        id:redwall7
        entityId:"redwall7"
        height:cow
        width:column
        anchors {
            top:redwall1.top
            topMargin:cow*3
            left:redwall1.left

        }
    }
    RedWall{
        id:redwall8
        entityId:"redwall8"
        height:cow
        width:column
        anchors {
            top:redwall2.top
            topMargin:cow*3
            left:redwall2.left

        }
    }
    RedWall{
        id:redwall9
        entityId:"redwall9"
        height:cow
        width:column
        anchors {
            top:redwall1.top
            topMargin:cow*4
            left:redwall1.left

        }
    }
    RedWall{
        id:redwall10
        entityId:"redwall10"
        height:cow
        width:column
        anchors {
            top:redwall2.top
            topMargin:cow*4
            left:redwall2.left

        }
    }
    RedWall{
        id:redwall11
        entityId:"redwall11"
        height:cow
        width:column
        anchors {
            top:redwall1.top
            topMargin:cow*5
            left:redwall1.left

        }
    }
    RedWall{
        id:redwall12
        entityId:"redwall12"
        height:cow
        width:column
        anchors {
            top:redwall2.top
            topMargin:cow*5
            left:redwall2.left

        }
    }
    RedWall{
        id:redwall13
        entityId:"redwall3"
        height:cow
        width:column
        anchors {
            top:redwall1.top
            topMargin:cow*6
            left:redwall1.left

        }
    }
    RedWall{
        id:redwall14
        entityId:"redwall14"
        height:cow
        width:column
        anchors {
            top:redwall2.top
            topMargin:cow*6
            left:redwall2.left

        }
    }
    RedWall{
        id:redwall15
        entityId:"redwall15"
        height:cow
        width:column
        anchors {
            top:redwall1.top
            topMargin:cow*7
            left:redwall1.left

        }
    }
    RedWall{
        id:redwall16
        entityId:"redwall16"
        height:cow
        width:column
        anchors {
            top:redwall2.top
            topMargin:cow*7
            left:redwall2.left

        }
    }
    RedWall{
        id:redwall17
        entityId:"redwall17"
        height:cow
        width:column
        anchors {
            top:redwall1.top
            topMargin:cow*8
            left:redwall1.left

        }
    }
    RedWall{
        id:redwall18
        entityId:"redwall18"
        height:cow
        width:column
        anchors {
            top:redwall2.top
            topMargin:cow*8
            left:redwall2.left

        }
    }
    RedWall{
        id:redwall19
        entityId:"redwall19"
        height:cow
        width:column
        anchors {
            top:redwall1.top
            topMargin:cow*9
            left:redwall1.left

        }
    }
    RedWall{
        id:redwall20
        entityId:"redwall20"
        height:cow
        width:column
        anchors {
            top:redwall2.top
            topMargin:cow*9
            left:redwall2.left

        }
    }

    RedWall{
        id:redwall21
        entityId:"redwall21"
        height:cow
        width:column
        anchors {
            top:rectangle.top
            left:rectangle.left
            topMargin:cow*2
            leftMargin:column*6
        }
    }
    RedWall{
        id:redwall22
        entityId:"redwall22"
        height:cow
        width:column
        anchors {
            top:redwall21.top
            left:redwall21.left
            leftMargin:cow

        }
    }
    RedWall{
        id:redwal23
        entityId:"redwall23"
        height:cow
        width:column
        anchors {
            top:redwall21.top
            topMargin:cow
            left:redwall21.left

        }
    }
    RedWall{
        id:redwal24
        entityId:"redwall24"
        height:cow
        width:column
        anchors {
            top:redwall22.top
            topMargin:cow
            left:redwall22.left

        }
    }
    RedWall{
        id:redwall25
        entityId:"redwall25"
        height:cow
        width:column
        anchors {
            top:redwall21.top
            topMargin:cow*2
            left:redwall21.left

        }
    }
    RedWall{
        id:redwall26
        entityId:"redwall26"
        height:cow
        width:column
        anchors {
            top:redwall22.top
            topMargin:cow*2
            left:redwall22.left

        }
    }
    RedWall{
        id:redwall27
        entityId:"redwall27"
        height:cow
        width:column
        anchors {
            top:redwall21.top
            topMargin:cow*3
            left:redwall21.left

        }
    }
    RedWall{
        id:redwall28
        entityId:"redwall28"
        height:cow
        width:column
        anchors {
            top:redwall22.top
            topMargin:cow*3
            left:redwall22.left

        }
    }
    RedWall{
        id:redwall29
        entityId:"redwall29"
        height:cow
        width:column
        anchors {
            top:redwall21.top
            topMargin:cow*4
            left:redwall21.left

        }
    }
    RedWall{
        id:redwall30
        entityId:"redwall30"
        height:cow
        width:column
        anchors {
            top:redwall22.top
            topMargin:cow*4
            left:redwall22.left

        }
    }
    RedWall{
        id:redwall31
        entityId:"redwall31"
        height:cow
        width:column
        anchors {
            top:redwall21.top
            topMargin:cow*5
            left:redwall21.left

        }
    }
    RedWall{
        id:redwall32
        entityId:"redwall12"
        height:cow
        width:column
        anchors {
            top:redwall22.top
            topMargin:cow*5
            left:redwall22.left

        }
    }
    RedWall{
        id:redwall33
        entityId:"redwall33"
        height:cow
        width:column
        anchors {
            top:redwall21.top
            topMargin:cow*6
            left:redwall21.left

        }
    }
    RedWall{
        id:redwall34
        entityId:"redwall34"
        height:cow
        width:column
        anchors {
            top:redwall22.top
            topMargin:cow*6
            left:redwall22.left

        }
    }
    RedWall{
        id:redwall35
        entityId:"redwall35"
        height:cow
        width:column
        anchors {
            top:redwall21.top
            topMargin:cow*7
            left:redwall21.left

        }
    }
    RedWall{
        id:redwall36
        entityId:"redwall16"
        height:cow
        width:column
        anchors {
            top:redwall22.top
            topMargin:cow*7
            left:redwall22.left

        }
    }
    RedWall{
        id:redwall37
        entityId:"redwall37"
        height:cow
        width:column
        anchors {
            top:redwall21.top
            topMargin:cow*8
            left:redwall21.left

        }
    }
    RedWall{
        id:redwall38
        entityId:"redwall38"
        height:cow
        width:column
        anchors {
            top:redwall22.top
            topMargin:cow*8
            left:redwall22.left

        }
    }
    RedWall{
        id:redwall39
        entityId:"redwall39"
        height:cow
        width:column
        anchors {
            top:redwall21.top
            topMargin:cow*9
            left:redwall21.left

        }
    }
    RedWall{
        id:redwall40
        entityId:"redwall40"
        height:cow
        width:column
        anchors {
            top:redwall22.top
            topMargin:cow*9
            left:redwall22.left

        }
    }
    RedWall{
        id:redwall41
        entityId:"redwall41"
        height:cow
        width:column
        anchors {
            top:rectangle.top
            left:rectangle.left
            topMargin:cow*2
            leftMargin:column*10
        }
    }
    RedWall{
        id:redwall42
        entityId:"redwall42"
        height:cow
        width:column
        anchors {
            top:redwall41.top
            left:redwall41.left
            leftMargin:cow

        }
    }
    RedWall{
        id:redwall43
        entityId:"redwall43"
        height:cow
        width:column
        anchors {
            top:redwall41.top
            topMargin:cow
            left:redwall41.left

        }
    }
    RedWall{
        id:redwall44
        entityId:"redwall4"
        height:cow
        width:column
        anchors {
            top:redwall42.top
            topMargin:cow
            left:redwall42.left

        }
    }
    RedWall{
        id:redwall45
        entityId:"redwall45"
        height:cow
        width:column
        anchors {
            top:redwall41.top
            topMargin:cow*2
            left:redwall41.left

        }
    }
    RedWall{
        id:redwall46
        entityId:"redwall46"
        height:cow
        width:column
        anchors {
            top:redwall42.top
            topMargin:cow*2
            left:redwall42.left

        }
    }
    RedWall{
        id:redwall47
        entityId:"redwall47"
        height:cow
        width:column
        anchors {
            top:redwall41.top
            topMargin:cow*3
            left:redwall41.left

        }
    }
    RedWall{
        id:redwall48
        entityId:"redwall48"
        height:cow
        width:column
        anchors {
            top:redwall42.top
            topMargin:cow*3
            left:redwall42.left

        }
    }
    RedWall{
        id:redwall49
        entityId:"redwall49"
        height:cow
        width:column
        anchors {
            top:redwall41.top
            topMargin:cow*4
            left:redwall41.left

        }
    }
    RedWall{
        id:redwall50
        entityId:"redwall50"
        height:cow
        width:column
        anchors {
            top:redwall42.top
            topMargin:cow*4
            left:redwall42.left

        }
    }
    RedWall{
        id:redwall51
        entityId:"redwall51"
        height:cow
        width:column
        anchors {
            top:redwall41.top
            topMargin:cow*5
            left:redwall41.left

        }
    }
    RedWall{
        id:redwall52
        entityId:"redwall12"
        height:cow
        width:column
        anchors {
            top:redwall42.top
            topMargin:cow*5
            left:redwall42.left

        }
    }
    RedWall{
        id:redwall53
        entityId:"redwall53"
        height:cow
        width:column
        anchors {
            top:redwall41.top
            topMargin:cow*6
            left:redwall41.left

        }

    }
    WhiteWall{
        id:whitewall3
        entityId:"whitewall3"
        height:cow
        width:column
        anchors {
            top:redwall54.top
            topMargin:-cow
            left:redwall54.right
        }
    }
    WhiteWall{
        id:whitewall4
        entityId:"whitewall4"
        height:cow
        width:column
        anchors {
            top:whitewall3.top
            left:whitewall3.right
        }
    }
    WhiteWall{
        id:whitewall5
        entityId:"whitewall5"
        height:cow
        width:column
        anchors {
            top:whitewall3.top
            topMargin:cow
            left:whitewall3.left
        }
    }
    WhiteWall{
        id:whitewall6
        entityId:"whitewall6"
        height:cow
        width:column
        anchors {
            top:whitewall4.top
            topMargin:cow
            left:whitewall4.left
        }
    }

    RedWall{
        id:redwall54
        entityId:"redwall54"
        height:cow
        width:column
        anchors {
            top:redwall42.top
            topMargin:cow*6
            left:redwall42.left

        }
    }
    RedWall{
        id:redwall55
        entityId:"redwall55"
        height:cow
        width:column
        anchors {
            top:redwall41.top
            topMargin:cow*7
            left:redwall41.left

        }
    }
    RedWall{
        id:redwall56
        entityId:"redwall56"
        height:cow
        width:column
        anchors {
            top:redwall42.top
            topMargin:cow*7
            left:redwall42.left

        }
    }

    RedWall{
        id:redwall59
        entityId:"redwall59"
        height:cow
        width:column
        anchors {
            top:redwall55.top
            topMargin:cow*4
            left:redwall55.left

        }
    }
    RedWall{
        id:redwall560
        entityId:"redwall60"
        height:cow
        width:column
        anchors {
            top:redwall59.top
            topMargin:0
            left:redwall59.right

        }
    }
    RedWall{
        id:redwall61
        entityId:"redwall61"
        height:cow
        width:column
        anchors {
            top:rectangle.top
            left:rectangle.left
            topMargin:cow*2
            leftMargin:column*14
        }
    }
    RedWall{
        id:redwall62
        entityId:"redwall62"
        height:cow
        width:column
        anchors {
            top:redwall61.top
            left:redwall61.left
            leftMargin:cow

        }
    }
    RedWall{
        id:redwall63
        entityId:"redwall63"
        height:cow
        width:column
        anchors {
            top:redwall61.top
            topMargin:cow
            left:redwall61.left

        }
    }
    RedWall{
        id:redwall64
        entityId:"redwall64"
        height:cow
        width:column
        anchors {
            top:redwall62.top
            topMargin:cow
            left:redwall62.left

        }
    }
    RedWall{
        id:redwall65
        entityId:"redwall45"
        height:cow
        width:column
        anchors {
            top:redwall61.top
            topMargin:cow*2
            left:redwall61.left

        }
    }
    RedWall{
        id:redwall66
        entityId:"redwall66"
        height:cow
        width:column
        anchors {
            top:redwall62.top
            topMargin:cow*2
            left:redwall62.left

        }
    }
    RedWall{
        id:redwall67
        entityId:"redwall67"
        height:cow
        width:column
        anchors {
            top:redwall61.top
            topMargin:cow*3
            left:redwall61.left

        }
    }
    RedWall{
        id:redwall68
        entityId:"redwall68"
        height:cow
        width:column
        anchors {
            top:redwall62.top
            topMargin:cow*3
            left:redwall62.left

        }
    }
    RedWall{
        id:redwall69
        entityId:"redwall69"
        height:cow
        width:column
        anchors {
            top:redwall61.top
            topMargin:cow*4
            left:redwall61.left

        }
    }
    RedWall{
        id:redwall70
        entityId:"redwall70"
        height:cow
        width:column
        anchors {
            top:redwall62.top
            topMargin:cow*4
            left:redwall62.left

        }
    }
    RedWall{
        id:redwall71
        entityId:"redwall71"
        height:cow
        width:column
        anchors {
            top:redwall61.top
            topMargin:cow*5
            left:redwall61.left

        }
    }
    RedWall{
        id:redwall72
        entityId:"redwall72"
        height:cow
        width:column
        anchors {
            top:redwall62.top
            topMargin:cow*5
            left:redwall62.left

        }
    }
    RedWall{
        id:redwall73
        entityId:"redwall73"
        height:cow
        width:column
        anchors {
            top:redwall61.top
            topMargin:cow*6
            left:redwall61.left

        }

    }


    RedWall{
        id:redwall74
        entityId:"redwall74"
        height:cow
        width:column
        anchors {
            top:redwall62.top
            topMargin:cow*6
            left:redwall62.left

        }
    }
    RedWall{
        id:redwall75
        entityId:"redwall75"
        height:cow
        width:column
        anchors {
            top:redwall61.top
            topMargin:cow*7
            left:redwall61.left

        }
    }
    RedWall{
        id:redwall76
        entityId:"redwall76"
        height:cow
        width:column
        anchors {
            top:redwall62.top
            topMargin:cow*7
            left:redwall62.left

        }
    }
    RedWall{
        id:redwall77
        entityId:"redwall77"
        height:cow
        width:column
        anchors {
            top:redwall61.top
            topMargin:cow*11
            left:redwall61.left

        }
    }
    RedWall{
        id:redwall78
        entityId:"redwall78"
        height:cow
        width:column
        anchors {
            top:redwall62.top
            topMargin:cow*11
            left:redwall62.left

        }
    }
    RedWall{
        id:redwall81
        entityId:"redwal81"
        height:cow
        width:column
        anchors {
            top:rectangle.top
            left:rectangle.left
            topMargin:cow*2
            leftMargin:column*18
        }
    }
    RedWall{
        id:redwall82
        entityId:"redwall82"
        height:cow
        width:column
        anchors {
            top:redwall81.top
            left:redwall81.left
            leftMargin:cow

        }
    }
    RedWall{
        id:redwall83
        entityId:"redwall83"
        height:cow
        width:column
        anchors {
            top:redwall81.top
            topMargin:cow
            left:redwall81.left

        }
    }
    RedWall{
        id:redwall84
        entityId:"redwall84"
        height:cow
        width:column
        anchors {
            top:redwall82.top
            topMargin:cow
            left:redwall82.left

        }
    }
    RedWall{
        id:redwall85
        entityId:"redwall85"
        height:cow
        width:column
        anchors {
            top:redwall81.top
            topMargin:cow*2
            left:redwall81.left

        }
    }
    RedWall{
        id:redwall86
        entityId:"redwall86"
        height:cow
        width:column
        anchors {
            top:redwall82.top
            topMargin:cow*2
            left:redwall82.left

        }
    }
    RedWall{
        id:redwall87
        entityId:"redwall87"
        height:cow
        width:column
        anchors {
            top:redwall81.top
            topMargin:cow*3
            left:redwall81.left

        }
    }
    RedWall{
        id:redwall88
        entityId:"redwall88"
        height:cow
        width:column
        anchors {
            top:redwall82.top
            topMargin:cow*3
            left:redwall82.left

        }
    }
    RedWall{
        id:redwall89
        entityId:"redwall89"
        height:cow
        width:column
        anchors {
            top:redwall81.top
            topMargin:cow*4
            left:redwall81.left

        }
    }
    RedWall{
        id:redwall90
        entityId:"redwall90"
        height:cow
        width:column
        anchors {
            top:redwall82.top
            topMargin:cow*4
            left:redwall82.left

        }
    }
    RedWall{
        id:redwall91
        entityId:"redwall191"
        height:cow
        width:column
        anchors {
            top:redwall81.top
            topMargin:cow*5
            left:redwall81.left

        }
    }
    RedWall{
        id:redwall92
        entityId:"redwall92"
        height:cow
        width:column
        anchors {
            top:redwall82.top
            topMargin:cow*5
            left:redwall82.left

        }
    }
    RedWall{
        id:redwall93
        entityId:"redwall93"
        height:cow
        width:column
        anchors {
            top:redwall81.top
            topMargin:cow*6
            left:redwall81.left

        }
    }
    RedWall{
        id:redwall94
        entityId:"redwall94"
        height:cow
        width:column
        anchors {
            top:redwall82.top
            topMargin:cow*6
            left:redwall82.left

        }
    }
    RedWall{
        id:redwall95
        entityId:"redwall95"
        height:cow
        width:column
        anchors {
            top:redwall81.top
            topMargin:cow*7
            left:redwall81.left

        }
    }
    RedWall{
        id:redwall96
        entityId:"redwall96"
        height:cow
        width:column
        anchors {
            top:redwall82.top
            topMargin:cow*7
            left:redwall82.left

        }
    }
    RedWall{
        id:redwall97
        entityId:"redwall97"
        height:cow
        width:column
        anchors {
            top:redwall81.top
            topMargin:cow*8
            left:redwall81.left

        }
    }
    RedWall{
        id:redwall98
        entityId:"redwall98"
        height:cow
        width:column
        anchors {
            top:redwall82.top
            topMargin:cow*8
            left:redwall82.left

        }
    }
    RedWall{
        id:redwall99
        entityId:"redwall99"
        height:cow
        width:column
        anchors {
            top:redwall81.top
            topMargin:cow*9
            left:redwall81.left

        }
    }
    RedWall{
        id:redwall100
        entityId:"redwall100"
        height:cow
        width:column
        anchors {
            top:redwall82.top
            topMargin:cow*9
            left:redwall82.left

        }
    }
    RedWall{
        id:redwall101
        entityId:"redwall101"
        height:cow
        width:column
        anchors {
            top:rectangle.top
            left:rectangle.left
            topMargin:cow*2
            leftMargin:column*22
        }
    }
    RedWall{
        id:redwall102
        entityId:"redwall102"
        height:cow
        width:column
        anchors {
            top:redwall101.top
            left:redwall101.left
            leftMargin:cow

        }
    }
    RedWall{
        id:redwall103
        entityId:"redwall103"
        height:cow
        width:column
        anchors {
            top:redwall101.top
            topMargin:cow
            left:redwall101.left

        }
    }
    RedWall{
        id:redwall104
        entityId:"redwall104"
        height:cow
        width:column
        anchors {
            top:redwall102.top
            topMargin:cow
            left:redwall102.left

        }
    }
    RedWall{
        id:redwall105
        entityId:"redwall105"
        height:cow
        width:column
        anchors {
            top:redwall101.top
            topMargin:cow*2
            left:redwall101.left

        }
    }
    RedWall{
        id:redwall106
        entityId:"redwall106"
        height:cow
        width:column
        anchors {
            top:redwall102.top
            topMargin:cow*2
            left:redwall102.left

        }
    }
    RedWall{
        id:redwall107
        entityId:"redwall107"
        height:cow
        width:column
        anchors {
            top:redwall101.top
            topMargin:cow*3
            left:redwall101.left

        }
    }
    RedWall{
        id:redwall108
        entityId:"redwall108"
        height:cow
        width:column
        anchors {
            top:redwall102.top
            topMargin:cow*3
            left:redwall102.left

        }
    }
    RedWall{
        id:redwall109
        entityId:"redwall109"
        height:cow
        width:column
        anchors {
            top:redwall101.top
            topMargin:cow*4
            left:redwall101.left

        }
    }
    RedWall{
        id:redwall110
        entityId:"redwall110"
        height:cow
        width:column
        anchors {
            top:redwall102.top
            topMargin:cow*4
            left:redwall102.left

        }
    }
    RedWall{
        id:redwall111
        entityId:"redwall111"
        height:cow
        width:column
        anchors {
            top:redwall101.top
            topMargin:cow*5
            left:redwall101.left

        }
    }
    RedWall{
        id:redwall112
        entityId:"redwall112"
        height:cow
        width:column
        anchors {
            top:redwall102.top
            topMargin:cow*5
            left:redwall102.left

        }
    }
    RedWall{
        id:redwall113
        entityId:"redwall13"
        height:cow
        width:column
        anchors {
            top:redwall101.top
            topMargin:cow*6
            left:redwall101.left

        }
    }
    RedWall{
        id:redwall114
        entityId:"redwall114"
        height:cow
        width:column
        anchors {
            top:redwall102.top
            topMargin:cow*6
            left:redwall102.left

        }
    }
    RedWall{
        id:redwall115
        entityId:"redwall115"
        height:cow
        width:column
        anchors {
            top:redwall101.top
            topMargin:cow*7
            left:redwall101.left

        }
    }
    RedWall{
        id:redwall116
        entityId:"redwall116"
        height:cow
        width:column
        anchors {
            top:redwall102.top
            topMargin:cow*7
            left:redwall102.left

        }
    }
    RedWall{
        id:redwall117
        entityId:"redwall117"
        height:cow
        width:column
        anchors {
            top:redwall101.top
            topMargin:cow*8
            left:redwall101.left

        }
    }
    RedWall{
        id:redwall118
        entityId:"redwall118"
        height:cow
        width:column
        anchors {
            top:redwall102.top
            topMargin:cow*8
            left:redwall102.left

        }
    }
    RedWall{
        id:redwall119
        entityId:"redwall119"
        height:cow
        width:column
        anchors {
            top:redwall101.top
            topMargin:cow*9
            left:redwall101.left

        }
    }
    RedWall{
        id:redwall120
        entityId:"redwall120"
        height:cow
        width:column
        anchors {
            top:redwall102.top
            topMargin:cow*9
            left:redwall102.left

        }
    }
    RedWall{
        id:redwall121
        entityId:"redwall121"
        height:cow
        width:column
        anchors{
            top:whiteWall1.top
            left:whiteWall1.left
            leftMargin:cow*4
        }

    }
    RedWall{
        id:redwall122
        entityId:"redwall122"
        height:cow
        width:column
        anchors{
            top:whiteWall1.top
            left:whiteWall1.left
            leftMargin:cow*5
        }

    }
    RedWall{
        id:redwall123
        entityId:"redwall123"
        height:cow
        width:column
        anchors{
            top:whiteWall1.top
            left:whiteWall1.left
            leftMargin:cow*6
        }

    }
    RedWall{
        id:redwall124
        entityId:"redwall124"
        height:cow
        width:column
        anchors{
            top:whiteWall1.top
            left:whiteWall1.left
            leftMargin:cow*7
        }

    }
    RedWall{
        id:redwall125
        entityId:"redwall121"
        height:cow
        width:column
        anchors{
            top:whiteWall1.top
            left:whiteWall1.left
            leftMargin:cow*18
        }

    }
    RedWall{
        id:redwall126
        entityId:"redwall126"
        height:cow
        width:column
        anchors{
            top:whiteWall1.top
            left:whiteWall1.left
            leftMargin:cow*19
        }

    }
    RedWall{
        id:redwall127
        entityId:"redwall127"
        height:cow
        width:column
        anchors{
            top:whiteWall1.top
            left:whiteWall1.left
            leftMargin:cow*20
        }

    }
    RedWall{
        id:redwall128
        entityId:"redwall121"
        height:cow
        width:column
        anchors{
            top:whiteWall1.top
            left:whiteWall1.left
            leftMargin:cow*21
        }
    }

    RedWall{
        id:redwall131
        entityId:"redwall131"
        height:cow
        width:column
        anchors{
            top:rectangle.top
            topMargin:cow*18
            left:rectangle.left
            leftMargin:cow*2
        }
    }
    RedWall{
        id:redwall132
        entityId:"redwall132"
        height:cow
        width:column
        anchors{
            top:redwall131.top
            left:redwall131.right
        }
    }
    RedWall{
        id:redwall133
        entityId:"redwall133"
        height:cow
        width:column
        anchors{
            top:redwall131.top
            topMargin:cow
            left:redwall131.left
        }
    }
    RedWall{
        id:redwall134
        entityId:"redwall134"
        height:cow
        width:column
        anchors{
            top:redwall132.top
            topMargin:cow
            left:redwall132.left
        }
    }
    RedWall{
        id:redwall135
        entityId:"redwall135"
        height:cow
        width:column
        anchors{
            top:redwall131.top
            topMargin:cow*2
            left:redwall131.left
        }
    }
    RedWall{
        id:redwall136
        entityId:"redwall136"
        height:cow
        width:column
        anchors{
            top:redwall132.top
            topMargin:cow*2
            left:redwall132.left
        }
    }
    RedWall{
        id:redwall137
        entityId:"redwall137"
        height:cow
        width:column
        anchors{
            top:redwall131.top
            topMargin:cow*3
            left:redwall131.left
        }
    }
    RedWall{
        id:redwall138
        entityId:"redwall138"
        height:cow
        width:column
        anchors{
            top:redwall132.top
            topMargin:cow*3
            left:redwall132.left
        }
    }
    RedWall{
        id:redwall139
        entityId:"redwall139"
        height:cow
        width:column
        anchors{
            top:redwall131.top
            topMargin:cow*4
            left:redwall131.left
        }
    }
    RedWall{
        id:redwall140
        entityId:"redwall140"
        height:cow
        width:column
        anchors{
            top:redwall132.top
            topMargin:cow*4
            left:redwall132.left
        }
    }
    RedWall{
        id:redwall141
        entityId:"redwall141"
        height:cow
        width:column
        anchors{
            top:redwall131.top
            topMargin:cow*5
            left:redwall131.left
        }
    }
    RedWall{
        id:redwall142
        entityId:"redwall142"
        height:cow
        width:column
        anchors{
            top:redwall132.top
            topMargin:cow*5
            left:redwall132.left
        }
    }
    RedWall{
        id:redwall143
        entityId:"redwall143"
        height:cow
        width:column
        anchors{
            top:redwall131.top
            topMargin:cow*6
            left:redwall131.left
        }
    }
    RedWall{
        id:redwall144
        entityId:"redwall144"
        height:cow
        width:column
        anchors{
            top:redwall132.top
            topMargin:cow*6
            left:redwall132.left
        }
    }
    RedWall{
        id:redwall145
        entityId:"redwall145"
        height:cow
        width:column
        anchors{
            top:redwall131.top
            topMargin:cow*7
            left:redwall131.left
        }
    }
    RedWall{
        id:redwall146
        entityId:"redwall146"
        height:cow
        width:column
        anchors{
            top:redwall132.top
            topMargin:cow*7
            left:redwall132.left
        }
    }
    RedWall{
        id:redwall151
        entityId:"redwall151"
        height:cow
        width:column
        anchors{
            top:rectangle.top
            topMargin:cow*18
            left:rectangle.left
            leftMargin:cow*6
        }
    }
    RedWall{
        id:redwall152
        entityId:"redwall152"
        height:cow
        width:column
        anchors{
            top:redwall151.top
            left:redwall151.right
        }
    }
    RedWall{
        id:redwall153
        entityId:"redwall153"
        height:cow
        width:column
        anchors{
            top:redwall151.top
            topMargin:cow
            left:redwall151.left
        }
    }
    RedWall{
        id:redwall154
        entityId:"redwall154"
        height:cow
        width:column
        anchors{
            top:redwall152.top
            topMargin:cow
            left:redwall152.left
        }
    }
    RedWall{
        id:redwall155
        entityId:"redwall155"
        height:cow
        width:column
        anchors{
            top:redwall151.top
            topMargin:cow*2
            left:redwall151.left
        }
    }
    RedWall{
        id:redwall156
        entityId:"redwall156"
        height:cow
        width:column
        anchors{
            top:redwall152.top
            topMargin:cow*2
            left:redwall152.left
        }
    }
    RedWall{
        id:redwall157
        entityId:"redwall157"
        height:cow
        width:column
        anchors{
            top:redwall151.top
            topMargin:cow*3
            left:redwall151.left
        }
    }
    RedWall{
        id:redwall158
        entityId:"redwall158"
        height:cow
        width:column
        anchors{
            top:redwall152.top
            topMargin:cow*3
            left:redwall152.left
        }
    }
    RedWall{
        id:redwall159
        entityId:"redwall159"
        height:cow
        width:column
        anchors{
            top:redwall151.top
            topMargin:cow*4
            left:redwall151.left
        }
    }
    RedWall{
        id:redwall160
        entityId:"redwall160"
        height:cow
        width:column
        anchors{
            top:redwall152.top
            topMargin:cow*4
            left:redwall152.left
        }
    }
    RedWall{
        id:redwall161
        entityId:"redwall161"
        height:cow
        width:column
        anchors{
            top:redwall151.top
            topMargin:cow*5
            left:redwall151.left
        }
    }
    RedWall{
        id:redwall162
        entityId:"redwall162"
        height:cow
        width:column
        anchors{
            top:redwall152.top
            topMargin:cow*5
            left:redwall152.left
        }
    }
    RedWall{
        id:redwall163
        entityId:"redwall163"
        height:cow
        width:column
        anchors{
            top:redwall151.top
            topMargin:cow*6
            left:redwall151.left
        }
    }
    RedWall{
        id:redwall164
        entityId:"redwall164"
        height:cow
        width:column
        anchors{
            top:redwall152.top
            topMargin:cow*6
            left:redwall152.left
        }
    }
    RedWall{
        id:redwall165
        entityId:"redwall165"
        height:cow
        width:column
        anchors{
            top:redwall151.top
            topMargin:cow*7
            left:redwall151.left
        }
    }
    RedWall{
        id:redwall166
        entityId:"redwall166"
        height:cow
        width:column
        anchors{
            top:redwall152.top
            topMargin:cow*7
            left:redwall152.left
        }
    }
    RedWall{
        id:redwall171
        entityId:"redwall171"
        height:cow
        width:column
        anchors{
            top:rectangle.top
            topMargin:cow*16
            left:rectangle.left
            leftMargin:cow*10
        }
    }
    RedWall{
        id:redwall172
        entityId:"redwall172"
        height:cow
        width:column
        anchors{
            top:redwall171.top
            left:redwall171.right
        }
    }
    RedWall{
        id:redwall173
        entityId:"redwall173"
        height:cow
        width:column
        anchors{
            top:redwall171.top
            topMargin:cow
            left:redwall171.left
        }
    }
    RedWall{
        id:redwall174
        entityId:"redwall174"
        height:cow
        width:column
        anchors{
            top:redwall172.top
            topMargin:cow
            left:redwall172.left
        }
    }
    RedWall{
        id:redwall175
        entityId:"redwall175"
        height:cow
        width:column
        anchors{
            top:redwall171.top
            topMargin:cow*2
            left:redwall171.left
        }
    }
    RedWall{
        id:redwall176
        entityId:"redwall176"
        height:cow
        width:column
        anchors{
            top:redwall172.top
            topMargin:cow*2
            left:redwall172.left
        }
    }
    RedWall{
        id:redwall177
        entityId:"redwall177"
        height:cow
        width:column
        anchors{
            top:redwall171.top
            topMargin:cow*3
            left:redwall171.left
        }
    }
    RedWall{
        id:redwall178
        entityId:"redwall178"
        height:cow
        width:column
        anchors{
            top:redwall172.top
            topMargin:cow*3
            left:redwall172.left
        }
    }
    RedWall{
        id:redwall179
        entityId:"redwall159"
        height:cow
        width:column
        anchors{
            top:redwall171.top
            topMargin:cow*4
            left:redwall171.left
        }
    }
    RedWall{
        id:redwall180
        entityId:"redwall160"
        height:cow
        width:column
        anchors{
            top:redwall172.top
            topMargin:cow*4
            left:redwall172.left
        }
    }
    RedWall{
        id:redwall181
        entityId:"redwall181"
        height:cow
        width:column
        anchors{
            top:redwall171.top
            topMargin:cow*5
            left:redwall171.left
        }
    }
    RedWall{
        id:redwall182
        entityId:"redwall182"
        height:cow
        width:column
        anchors{
            top:redwall172.top
            topMargin:cow*5
            left:redwall172.left
        }
    }
    RedWall{
        id:redwall183
        entityId:"redwall183"
        height:cow
        width:column
        anchors{
            top:redwall171.top
            topMargin:cow*6
            left:redwall171.left
        }
    }
    RedWall{
        id:redwall184
        entityId:"redwall184"
        height:cow
        width:column
        anchors{
            top:redwall172.top
            topMargin:cow*6
            left:redwall172.left
        }
    }
    RedWall{
        id:redwall185
        entityId:"redwall185"
        height:cow
        width:column
        anchors{
            top:redwall172.top
            topMargin:cow
            left:redwall172.right
        }
    }
    RedWall{
        id:redwall186
        entityId:"redwall186"
        height:cow
        width:column
        anchors{
            top:redwall185.top

            left:redwall185.right
        }
    }
    RedWall{
        id:redwall187
        entityId:"redwall187"
        height:cow
        width:column
        anchors{
            top:redwall185.top
            topMargin:cow
            left:redwall185.left
        }
    }
    RedWall{
        id:redwall188
        entityId:"redwall188"
        height:cow
        width:column
        anchors{
            top:redwall186.top
            topMargin:cow
            left:redwall186.left
        }
    }
    RedWall{
        id:redwall191
        entityId:"redwall191"
        height:cow
        width:column
        anchors{
            top:rectangle.top
            topMargin:cow*16
            left:rectangle.left
            leftMargin:cow*14
        }
    }
    RedWall{
        id:redwall192
        entityId:"redwall192"
        height:cow
        width:column
        anchors{
            top:redwall191.top
            left:redwall191.right
        }
    }
    RedWall{
        id:redwall193
        entityId:"redwall193"
        height:cow
        width:column
        anchors{
            top:redwall191.top
            topMargin:cow
            left:redwall191.left
        }
    }
    RedWall{
        id:redwall194
        entityId:"redwall194"
        height:cow
        width:column
        anchors{
            top:redwall192.top
            topMargin:cow
            left:redwall192.left
        }
    }
    RedWall{
        id:redwall195
        entityId:"redwall195"
        height:cow
        width:column
        anchors{
            top:redwall191.top
            topMargin:cow*2
            left:redwall191.left
        }
    }
    RedWall{
        id:redwall196
        entityId:"redwall196"
        height:cow
        width:column
        anchors{
            top:redwall192.top
            topMargin:cow*2
            left:redwall192.left
        }
    }
    RedWall{
        id:redwall197
        entityId:"redwall197"
        height:cow
        width:column
        anchors{
            top:redwall191.top
            topMargin:cow*3
            left:redwall191.left
        }
    }
    RedWall{
        id:redwall198
        entityId:"redwall198"
        height:cow
        width:column
        anchors{
            top:redwall192.top
            topMargin:cow*3
            left:redwall192.left
        }
    }
    RedWall{
        id:redwall199
        entityId:"redwall199"
        height:cow
        width:column
        anchors{
            top:redwall191.top
            topMargin:cow*4
            left:redwall191.left
        }
    }
    RedWall{
        id:redwall200
        entityId:"redwall200"
        height:cow
        width:column
        anchors{
            top:redwall192.top
            topMargin:cow*4
            left:redwall192.left
        }
    }
    RedWall{
        id:redwall201
        entityId:"redwall201"
        height:cow
        width:column
        anchors{
            top:redwall191.top
            topMargin:cow*5
            left:redwall191.left
        }
    }
    RedWall{
        id:redwall202
        entityId:"redwall202"
        height:cow
        width:column
        anchors{
            top:redwall192.top
            topMargin:cow*5
            left:redwall192.left
        }
    }
    RedWall{
        id:redwall203
        entityId:"redwall203"
        height:cow
        width:column
        anchors{
            top:redwall191.top
            topMargin:cow*6
            left:redwall191.left
        }
    }
    RedWall{
        id:redwall204
        entityId:"redwall204"
        height:cow
        width:column
        anchors{
            top:redwall192.top
            topMargin:cow*6
            left:redwall192.left
        }
    }
    RedWall{
        id:redwall211
        entityId:"redwall211"
        height:cow
        width:column
        anchors{
            top:rectangle.top
            topMargin:cow*18
            left:rectangle.left
            leftMargin:cow*18
        }
    }
    RedWall{
        id:redwall212
        entityId:"redwall212"
        height:cow
        width:column
        anchors{
            top:redwall211.top
            left:redwall211.right
        }
    }
    RedWall{
        id:redwall213
        entityId:"redwall213"
        height:cow
        width:column
        anchors{
            top:redwall211.top
            topMargin:cow
            left:redwall211.left
        }
    }
    RedWall{
        id:redwall214
        entityId:"redwall214"
        height:cow
        width:column
        anchors{
            top:redwall212.top
            topMargin:cow
            left:redwall212.left
        }
    }
    RedWall{
        id:redwall215
        entityId:"redwall215"
        height:cow
        width:column
        anchors{
            top:redwall211.top
            topMargin:cow*2
            left:redwall211.left
        }
    }
    RedWall{
        id:redwall216
        entityId:"redwall216"
        height:cow
        width:column
        anchors{
            top:redwall212.top
            topMargin:cow*2
            left:redwall212.left
        }
    }
    RedWall{
        id:redwall217
        entityId:"redwall217"
        height:cow
        width:column
        anchors{
            top:redwall211.top
            topMargin:cow*3
            left:redwall211.left
        }
    }
    RedWall{
        id:redwall218
        entityId:"redwall218"
        height:cow
        width:column
        anchors{
            top:redwall212.top
            topMargin:cow*3
            left:redwall212.left
        }
    }
    RedWall{
        id:redwall219
        entityId:"redwall219"
        height:cow
        width:column
        anchors{
            top:redwall211.top
            topMargin:cow*4
            left:redwall211.left
        }
    }
    RedWall{
        id:redwall220
        entityId:"redwall220"
        height:cow
        width:column
        anchors{
            top:redwall212.top
            topMargin:cow*4
            left:redwall212.left
        }
    }
    RedWall{
        id:redwall221
        entityId:"redwall221"
        height:cow
        width:column
        anchors{
            top:redwall211.top
            topMargin:cow*5
            left:redwall211.left
        }
    }
    RedWall{
        id:redwall222
        entityId:"redwall222"
        height:cow
        width:column
        anchors{
            top:redwall212.top
            topMargin:cow*5
            left:redwall212.left
        }
    }
    RedWall{
        id:redwall223
        entityId:"redwall223"
        height:cow
        width:column
        anchors{
            top:redwall211.top
            topMargin:cow*6
            left:redwall211.left
        }
    }
    RedWall{
        id:redwall224
        entityId:"redwall224"
        height:cow
        width:column
        anchors{
            top:redwall212.top
            topMargin:cow*6
            left:redwall212.left
        }
    }
    RedWall{
        id:redwall225
        entityId:"redwall225"
        height:cow
        width:column
        anchors{
            top:redwall211.top
            topMargin:cow*7
            left:redwall211.left
        }
    }
    RedWall{
        id:redwall226
        entityId:"redwall226"
        height:cow
        width:column
        anchors{
            top:redwall212.top
            topMargin:cow*7
            left:redwall212.left
        }
    }
    RedWall{
        id:redwall231
        entityId:"redwall231"
        height:cow
        width:column
        anchors{
            top:rectangle.top
            topMargin:cow*18
            left:rectangle.left
            leftMargin:cow*22
        }
    }
    RedWall{
        id:redwall232
        entityId:"redwall232"
        height:cow
        width:column
        anchors{
            top:redwall231.top
            left:redwall231.right
        }
    }
    RedWall{
        id:redwall233
        entityId:"redwall233"
        height:cow
        width:column
        anchors{
            top:redwall231.top
            topMargin:cow
            left:redwall231.left
        }
    }
    RedWall{
        id:redwall234
        entityId:"redwall234"
        height:cow
        width:column
        anchors{
            top:redwall232.top
            topMargin:cow
            left:redwall232.left
        }
    }
    RedWall{
        id:redwall235
        entityId:"redwall235"
        height:cow
        width:column
        anchors{
            top:redwall231.top
            topMargin:cow*2
            left:redwall231.left
        }
    }
    RedWall{
        id:redwall236
        entityId:"redwall236"
        height:cow
        width:column
        anchors{
            top:redwall232.top
            topMargin:cow*2
            left:redwall232.left
        }
    }
    RedWall{
        id:redwall237
        entityId:"redwall237"
        height:cow
        width:column
        anchors{
            top:redwall231.top
            topMargin:cow*3
            left:redwall231.left
        }
    }
    RedWall{
        id:redwall238
        entityId:"redwall238"
        height:cow
        width:column
        anchors{
            top:redwall232.top
            topMargin:cow*3
            left:redwall232.left
        }
    }
    RedWall{
        id:redwall239
        entityId:"redwall239"
        height:cow
        width:column
        anchors{
            top:redwall231.top
            topMargin:cow*4
            left:redwall231.left
        }
    }
    RedWall{
        id:redwall240
        entityId:"redwall224"
        height:cow
        width:column
        anchors{
            top:redwall232.top
            topMargin:cow*4
            left:redwall232.left
        }
    }
    RedWall{
        id:redwall241
        entityId:"redwall241"
        height:cow
        width:column
        anchors{
            top:redwall231.top
            topMargin:cow*5
            left:redwall231.left
        }
    }
    RedWall{
        id:redwall242
        entityId:"redwall242"
        height:cow
        width:column
        anchors{
            top:redwall232.top
            topMargin:cow*5
            left:redwall232.left
        }
    }
    RedWall{
        id:redwall243
        entityId:"redwall243"
        height:cow
        width:column
        anchors{
            top:redwall231.top
            topMargin:cow*6
            left:redwall231.left
        }
    }
    RedWall{
        id:redwall244
        entityId:"redwall246"
        height:cow
        width:column
        anchors{
            top:redwall232.top
            topMargin:cow*6
            left:redwall232.left
        }
    }
    RedWall{
        id:redwall245
        entityId:"redwall245"
        height:cow
        width:column
        anchors{
            top:redwall231.top
            topMargin:cow*7
            left:redwall231.left
        }
    }
    RedWall{
        id:redwall246
        entityId:"redwall246"
        height:cow
        width:column
        anchors{
            top:redwall232.top
            topMargin:cow*7
            left:redwall232.left
        }
    }



}

