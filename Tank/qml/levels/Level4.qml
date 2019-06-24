import QtQuick 2.0
import Felgo 3.0
import "../common" as Common
import ".."
import "../levels"
import "../entities"
Common.LevelBase {
    levelName: "Level4"

    property double cow: rectangle.height/14/2
    property double column: rectangle.height/14/2
    RedWall{
        id: redwall1
        entityId: "rewall1"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*4
            left: rectangle.left
            leftMargin: 0
        }
    }
    RedWall{
        id: redwall2
        entityId: "rewall2"
        height: cow
        width: height
        anchors{
            top: redwall1.top
            left: redwall1.right
        }
    }
    RedWall{
        id: redwall3
        entityId: "rewall3"
        height: cow
        width: height
        anchors{
            top: redwall1.top
            topMargin: cow
            left: redwall1.left
        }
    }
    RedWall{
        id: redwall4
        entityId: "rewall3"
        height: cow
        width: height
        anchors{
            top: redwall2.top
            topMargin: cow
            left: redwall2.left
        }
    }
    RedWall{
        id: redwall5
        entityId: "rewall5"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*2
            left: rectangle.left
            leftMargin: cow*2
        }
    }
    RedWall{
        id: redwall6
        entityId: "rewall6"
        height: cow
        width: height
        anchors{
            top: redwall5.top
            left: redwall5.right
        }
    }
    RedWall{
        id: redwall7
        entityId: "rewall7"
        height: cow
        width: height
        anchors{
            top: redwall5.top
            topMargin: cow
            left: redwall5.left
        }
    }
    RedWall{
        id: redwall8
        entityId: "rewall8"
        height: cow
        width: height
        anchors{
            top: redwall6.top
            topMargin: cow
            left: redwall6.left
        }
    }
    RedWall{
        id: redwall9
        entityId: "rewall9"
        height: cow
        width: height
        anchors{
            top: redwall5.top
            topMargin: cow*4
            left: redwall5.left
        }
    }
    RedWall{
        id: redwall10
        entityId: "rewall10"
        height: cow
        width: height
        anchors{
            top: redwall6.top
            topMargin: cow*4
            left: redwall6.left
        }
    }
    RedWall{
        id: redwall11
        entityId: "rewall11"
        height: cow
        width: height
        anchors{
            top: redwall5.top
            topMargin: cow*5
            left: redwall5.left
        }
    }
    RedWall{
        id: redwall12
        entityId: "rewall12"
        height: cow
        width: height
        anchors{
            top: redwall6.top
            topMargin: cow*5
            left: redwall6.left
        }
    }
    WhiteWalls{
        id:whitewalls1
        entityId: "whitewalls1"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*16
            left: rectangle.left
            leftMargin: 0
        }
    }
    WhiteWalls{
        id:whitewalls2
        entityId: "whitewalls2"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*18
            left: rectangle.left
            leftMargin: 0
        }
    }
    WhiteWalls{
        id:whitewalls3
        entityId: "whitewalls3"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*20
            left: rectangle.left
            leftMargin: 0
        }
    }
    WhiteWalls{
        id:whitewalls4
        entityId: "whitewalls4"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*22
            left: rectangle.left
            leftMargin: cow*2
        }
    }
    WhiteWalls{
        id:whitewalls5
        entityId: "whitewalls5"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*22
            left: rectangle.left
            leftMargin:cow*4
        }
    }
    WhiteWalls{
        id:whitewalls6
        entityId: "whitewalls6"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*22
            left: rectangle.left
            leftMargin: cow*6
        }
    }
    WhiteWalls{
        id:whitewalls7
        entityId: "whitewalls7"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*20
            left: rectangle.left
            leftMargin: cow*6
        }
    }
    WhiteWalls{
        id:whitewalls8
        entityId: "whitewalls8"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*10
            left: rectangle.left
            leftMargin: cow*8
        }
    }
    WhiteWalls{
        id:whitewalls9
        entityId: "whitewalls9"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*12
            left: rectangle.left
            leftMargin: cow*8
        }
    }
    WhiteWalls{
        id:whitewalls10
        entityId: "whitewalls10"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*8
            left: rectangle.left
            leftMargin: cow*10
        }
    }
    WhiteWalls{
        id:whitewalls11
        entityId: "whitewalls11"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*14
            left: rectangle.left
            leftMargin: cow*12
        }
    }
    WhiteWalls{
        id:whitewalls12
        entityId: "whitewalls12"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*10
            left: rectangle.left
            leftMargin: cow*14
        }
    }
    WhiteWalls{
        id:whitewalls13
        entityId: "whitewalls13"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*12
            left: rectangle.left
            leftMargin: cow*14
        }
    }
    WhiteWalls{
        id:whitewalls14
        entityId: "whitewalls14"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: 0
            left: rectangle.left
            leftMargin: cow*16
        }
    }
    WhiteWalls{
        id:whitewalls15
        entityId: "whitewalls15"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*16
            left: rectangle.left
            leftMargin: cow*2
        }
    }
    WhiteWalls{
        id:whitewalls16
        entityId: "whitewalls16"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*16
            left: rectangle.left
            leftMargin: cow*4
        }
    }
    WhiteWalls{
        id:whitewalls17
        entityId: "whitewalls17"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*0
            left: rectangle.left
            leftMargin: cow*18
        }
    }
    WhiteWalls{
        id:whitewalls18
        entityId: "whitewalls18"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*0
            left: rectangle.left
            leftMargin: cow*20
        }
    }
    WhiteWalls{
        id:whitewalls19
        entityId: "whitewalls19"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*2
            left: rectangle.left
            leftMargin: cow*16
        }
    }
    WhiteWalls{
        id:whitewalls120
        entityId: "whitewalls120"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*18
            left: rectangle.left
            leftMargin: cow*18
        }
    }
    WhiteWalls{
        id:whitewalls21
        entityId: "whitewalls21"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*20
            left: rectangle.left
            leftMargin: cow*18
        }
    }
    WhiteWalls{
        id:whitewalls22
        entityId: "whitewalls22"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*18
            left: rectangle.left
            leftMargin: cow*20
        }
    }
    WhiteWalls{
        id:whitewalls23
        entityId: "whitewalls23"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*2
            left: rectangle.left
            leftMargin: cow*22
        }
    }
    WhiteWalls{
        id:whitewalls24
        entityId: "whitewalls24"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*4
            left: rectangle.left
            leftMargin: cow*22
        }
    }
    WhiteWalls{
        id:whitewalls25
        entityId: "whitewalls25"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*6
            left: rectangle.left
            leftMargin: cow*22
        }
    }
    WhiteWalls{
        id:whitewalls26
        entityId: "whitewalls26"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*6
            left: rectangle.left
            leftMargin: cow*20
        }
    }
    WhiteWalls{
        id:whitewalls27
        entityId: "whitewalls27"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*22
            left: rectangle.left
            leftMargin: cow*22
        }
    }
    WhiteWalls{
        id:whitewalls28
        entityId: "whitewalls28"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*24
            left: rectangle.left
            leftMargin: cow*22
        }
    }
    WhiteWalls{
        id:whitewalls29
        entityId: "whitewalls29"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*22
            left: rectangle.left
            leftMargin: cow*24
        }
    }
    WhiteWalls{
        id:whitewalls30
        entityId: "whitewalls30"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*24
            left: rectangle.left
            leftMargin: cow*24
        }
    }
    RedWall{
        id: redwall13
        entityId: "rewall13"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*4
            left: rectangle.left
            leftMargin: cow*4
        }
    }
    RedWall{
        id: redwall14
        entityId: "rewall14"
        height: cow
        width: height
        anchors{
            top: redwall13.top
            left: redwall13.right
        }
    }
    RedWall{
        id: redwall15
        entityId: "rewall15"
        height: cow
        width: height
        anchors{
            top: redwall13.top
            topMargin: cow
            left: redwall13.left
        }
    }
    RedWall{
        id: redwall16
        entityId: "rewall16"
        height: cow
        width: height
        anchors{
            top: redwall14.top
            topMargin: cow
            left: redwall14.left
        }
    } RedWall{
        id: redwall17
        entityId: "rewall17"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*8
            left: rectangle.left
            leftMargin: cow*4
        }
    }
    RedWall{
        id: redwall18
        entityId: "rewall18"
        height: cow
        width: height
        anchors{
            top: redwall17.top
            left: redwall17.right
        }
    }
    RedWall{
        id: redwall19
        entityId: "rewall19"
        height: cow
        width: height
        anchors{
            top: redwall17.top
            topMargin: cow
            left: redwall17.left
        }
    }
    RedWall{
        id: redwal20
        entityId: "rewall20"
        height: cow
        width: height
        anchors{
            top: redwall18.top
            topMargin: cow
            left: redwall18.left
        }
    }
    RedWall{
        id: redwall21
        entityId: "rewall21"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*6
            left: rectangle.left
            leftMargin: cow*6
        }
    }
    RedWall{
        id: redwall22
        entityId: "rewall22"
        height: cow
        width: height
        anchors{
            top: redwall21.top
            left: redwall21.right
        }
    }
    RedWall{
        id: redwall23
        entityId: "rewall23"
        height: cow
        width: height
        anchors{
            top: redwall21.top
            topMargin: cow
            left: redwall21.left
        }
    }
    RedWall{
        id: redwall24
        entityId: "rewall24"
        height: cow
        width: height
        anchors{
            top: redwall22.top
            topMargin: cow
            left: redwall22.left
        }
    }
    RedWall{
        id: redwall25
        entityId: "rewall25"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*12
            left: rectangle.left
            leftMargin: cow*4
        }
    }
    RedWall{
        id: redwall26
        entityId: "rewall26"
        height: cow
        width: height
        anchors{
            top: redwall25.top
            left: redwall25.right
        }
    }
    RedWall{
        id: redwall27
        entityId: "rewall27"
        height: cow
        width: height
        anchors{
            top: redwall25.top
            topMargin: cow
            left: redwall25.left
        }
    }
    RedWall{
        id: redwall28
        entityId: "rewall28"
        height: cow
        width: height
        anchors{
            top: redwall26.top
            topMargin: cow
            left: redwall26.left
        }
    }
    RedWall{
        id: redwall29
        entityId: "rewall29"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*14
            left: rectangle.left
            leftMargin: cow*4
        }
    }
    RedWall{
        id: redwall30
        entityId: "rewall30"
        height: cow
        width: height
        anchors{
            top: redwall29.top
            left: redwall29.right
        }
    }
    RedWall{
        id: redwall31
        entityId: "rewall31"
        height: cow
        width: height
        anchors{
            top: redwall29.top
            topMargin: cow
            left: redwall29.left
        }
    }
    RedWall{
        id: redwall32
        entityId: "rewall32"
        height: cow
        width: height
        anchors{
            top: redwall30.top
            topMargin: cow
            left: redwall30.left
        }
    }
    RedWall{
        id: redwall33
        entityId: "rewall33"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*18
            left: rectangle.left
            leftMargin: cow*4
        }
    }
    RedWall{
        id: redwall34
        entityId: "rewall34"
        height: cow
        width: height
        anchors{
            top: redwall33.top
            left: redwall33.right
        }
    }
    RedWall{
        id: redwall35
        entityId: "rewall35"
        height: cow
        width: height
        anchors{
            top: redwall33.top
            topMargin: cow
            left: redwall33.left
        }
    }
    RedWall{
        id: redwall36
        entityId: "rewall36"
        height: cow
        width: height
        anchors{
            top: redwall34.top
            topMargin: cow
            left: redwall34.left
        }
    }
    RedWall{
        id: redwall37
        entityId: "rewall37"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*12
            left: rectangle.left
            leftMargin: cow*6
        }
    }
    RedWall{
        id: redwall38
        entityId: "rewall38"
        height: cow
        width: height
        anchors{
            top: redwall37.top
            left: redwall37.right
        }
    }
    RedWall{
        id: redwall39
        entityId: "rewall39"
        height: cow
        width: height
        anchors{
            top: redwall37.top
            topMargin: cow
            left: redwall37.left
        }
    }
    RedWall{
        id: redwall40
        entityId: "rewall40"
        height: cow
        width: height
        anchors{
            top: redwall38.top
            topMargin: cow
            left: redwall38.left
        }
    }
    RedWall{
        id: redwall41
        entityId: "rewall41"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*18
            left: rectangle.left
            leftMargin: cow*6
        }
    }
    RedWall{
        id: redwall42
        entityId: "rewall42"
        height: cow
        width: height
        anchors{
            top: redwall41.top
            left: redwall41.right
        }
    }
    RedWall{
        id: redwall43
        entityId: "rewall43"
        height: cow
        width: height
        anchors{
            top: redwall41.top
            topMargin: cow
            left: redwall41.left
        }
    }
    RedWall{
        id: redwall44
        entityId: "rewall44"
        height: cow
        width: height
        anchors{
            top: redwall42.top
            topMargin: cow
            left: redwall42.left
        }
    }
    RedWall{
        id: redwall45
        entityId: "rewall21"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*18
            left: rectangle.left
            leftMargin: cow*8
        }
    }
    RedWall{
        id: redwall46
        entityId: "rewall46"
        height: cow
        width: height
        anchors{
            top: redwall45.top
            left: redwall45.right
        }
    }
    RedWall{
        id: redwall47
        entityId: "rewall47"
        height: cow
        width: height
        anchors{
            top: redwall45.top
            topMargin: cow
            left: redwall45.left
        }
    }
    RedWall{
        id: redwall48
        entityId: "rewall48"
        height: cow
        width: height
        anchors{
            top: redwall46.top
            topMargin: cow
            left: redwall46.left
        }
    }
    RedWall{
        id: redwall49
        entityId: "rewall49"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*18
            left: rectangle.left
            leftMargin: cow*10
        }
    }
    RedWall{
        id: redwall50
        entityId: "rewall50"
        height: cow
        width: height
        anchors{
            top: redwall49.top
            left: redwall49.right
        }
    }
    RedWall{
        id: redwall51
        entityId: "rewall51"
        height: cow
        width: height
        anchors{
            top: redwall49.top
            topMargin: cow
            left: redwall49.left
        }
    }
    RedWall{
        id: redwall52
        entityId: "rewall52"
        height: cow
        width: height
        anchors{
            top: redwall50.top
            topMargin: cow
            left: redwall50.left
        }
    }
    RedWall{
        id: redwall53
        entityId: "rewall53"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*14
            left: rectangle.left
            leftMargin: cow*10
        }
    }
    RedWall{
        id: redwall54
        entityId: "rewall54"
        height: cow
        width: height
        anchors{
            top: redwall53.top
            left: redwall53.right
        }
    }
    RedWall{
        id: redwall55
        entityId: "rewall55"
        height: cow
        width: height
        anchors{
            top: redwall53.top
            topMargin: cow
            left: redwall53.left
        }
    }
    RedWall{
        id: redwall56
        entityId: "rewall56"
        height: cow
        width: height
        anchors{
            top: redwall54.top
            topMargin: cow
            left: redwall54.left
       }
    }
    RedWall{
        id: redwall57
        entityId: "rewall57"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*16
            left: rectangle.left
            leftMargin: cow*10
        }
    }
    RedWall{
        id: redwall58
        entityId: "rewall58"
        height: cow
        width: height
        anchors{
            top: redwall57.top
            left: redwall57.right
        }
    }
    RedWall{
        id: redwall59
        entityId: "rewall59"
        height: cow
        width: height
        anchors{
            top: redwall57.top
            topMargin: cow
            left: redwall57.left
        }
    }
    RedWall{
        id: redwall60
        entityId: "rewall60"
        height: cow
        width: height
        anchors{
            top: redwall58.top
            topMargin: cow
            left: redwall58.left
        }
    }
    RedWall{
        id: redwall61
        entityId: "rewall61"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*12
            left: rectangle.left
            leftMargin: cow*10
        }
    }
    RedWall{
        id: redwall62
        entityId: "rewall62"
        height: cow
        width: height
        anchors{
            top: redwall61.top
            left: redwall61.right
        }
    }
    RedWall{
        id: redwall63
        entityId: "rewall63"
        height: cow
        width: height
        anchors{
            top: redwall61.top
            topMargin: cow
            left: redwall61.left
        }
    }
    RedWall{
        id: redwall64
        entityId: "rewall64"
        height: cow
        width: height
        anchors{
            top: redwall62.top
            topMargin: cow
            left: redwall62.left
        }
    }
    RedWall{
        id: redwall65
        entityId: "rewall65"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*4
            left: rectangle.left
            leftMargin: cow*12
        }
    }
    RedWall{
        id: redwall66
        entityId: "rewall66"
        height: cow
        width: height
        anchors{
            top: redwall65.top
            left: redwall65.right
        }
    }
    RedWall{
        id: redwall67
        entityId: "rewall67"
        height: cow
        width: height
        anchors{
            top: redwall65.top
            topMargin: cow
            left: redwall65.left
        }
    }
    RedWall{
        id: redwall68
        entityId: "rewall68"
        height: cow
        width: height
        anchors{
            top: redwall66.top
            topMargin: cow
            left: redwall66.left
        }
    }
    RedWall{
        id: redwall69
        entityId: "rewall69"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*6
            left: rectangle.left
            leftMargin: cow*12
        }
    }
    RedWall{
        id: redwall70
        entityId: "rewall70"
        height: cow
        width: height
        anchors{
            top: redwall69.top
            left: redwall69.right
        }
    }
    RedWall{
        id: redwall71
        entityId: "rewall71"
        height: cow
        width: height
        anchors{
            top: redwall69.top
            topMargin: cow
            left: redwall69.left
        }
    }
    RedWall{
        id: redwall72
        entityId: "rewall72"
        height: cow
        width: height
        anchors{
            top: redwall70.top
            topMargin: cow
            left: redwall70.left
        }
    }
        RedWall{
            id: redwall73
            entityId: "rewall73"
            height: cow
            width: height
            anchors{
                top: rectangle.top
                topMargin: cow*8
                left: rectangle.left
                leftMargin: cow*12
            }
        }
        RedWall{
            id: redwall74
            entityId: "rewall46"
            height: cow
            width: height
            anchors{
                top: redwall73.top
                left: redwall73.right
            }
        }
        RedWall{
            id: redwall75
            entityId: "rewall75"
            height: cow
            width: height
            anchors{
                top: redwall73.top
                topMargin: cow
                left: redwall73.left
            }
        }
        RedWall{
            id: redwall76
            entityId: "rewall76"
            height: cow
            width: height
            anchors{
                top: redwall74.top
                topMargin: cow
                left: redwall74.left
            }
        }
        RedWall{
            id: redwall77
            entityId: "rewall77"
            height: cow
            width: height
            anchors{
                top: rectangle.top
                topMargin: cow*10
                left: rectangle.left
                leftMargin: cow*12
            }
        }
        RedWall{
            id: redwall78
            entityId: "rewall78"
            height: cow
            width: height
            anchors{
                top: redwall77.top
                left: redwall77.right
            }
        }
        RedWall{
            id: redwall79
            entityId: "rewall79"
            height: cow
            width: height
            anchors{
                top: redwall77.top
                topMargin: cow
                left: redwall77.left
            }
        }
        RedWall{
            id: redwall80
            entityId: "rewall80"
            height: cow
            width: height
            anchors{
                top: redwall78.top
                topMargin: cow
                left: redwall78.left
            }
        }
        RedWall{
            id: redwall81
            entityId: "rewall81"
            height: cow
            width: height
            anchors{
                top: rectangle.top
                topMargin: cow*4
                left: rectangle.left
                leftMargin: cow*14
            }
        }
        RedWall{
            id: redwall82
            entityId: "rewall82"
            height: cow
            width: height
            anchors{
                top: redwall81.top
                left: redwall81.right
            }
        }
        RedWall{
            id: redwall83
            entityId: "rewall83"
            height: cow
            width: height
            anchors{
                top: redwall81.top
                topMargin: cow
                left: redwall81.left
            }
        }
        RedWall{
            id: redwall84
            entityId: "rewall84"
            height: cow
            width: height
            anchors{
                top: redwall82.top
                topMargin: cow
                left: redwall82.left
            }
        }
        RedWall{
            id: redwall85
            entityId: "rewall85"
            height: cow
            width: height
            anchors{
                top: rectangle.top
                topMargin: cow*4
                left: rectangle.left
                leftMargin: cow*16
            }
        }
        RedWall{
            id: redwall86
            entityId: "rewall86"
            height: cow
            width: height
            anchors{
                top: redwall85.top
                left: redwall85.right
            }
        }
        RedWall{
            id: redwall87
            entityId: "rewall87"
            height: cow
            width: height
            anchors{
                top: redwall85.top
                topMargin: cow
                left: redwall85.left
            }
        }
        RedWall{
            id: redwall88
            entityId: "rewall88"
            height: cow
            width: height
            anchors{
                top: redwall86.top
                topMargin: cow
                left: redwall86.left
            }
        }
        RedWall{
            id: redwall89
            entityId: "rewall89"
            height: cow
            width: height
            anchors{
                top: rectangle.top
                topMargin: cow*4
                left: rectangle.left
                leftMargin: cow*18
            }
        }
        RedWall{
            id: redwall90
            entityId: "rewall90"
            height: cow
            width: height
            anchors{
                top: redwall89.top
                left: redwall89.right
            }
        }
        RedWall{
            id: redwall91
            entityId: "rewall91"
            height: cow
            width: height
            anchors{
                top: redwall89.top
                topMargin: cow
                left: redwall89.left
            }
        }
        RedWall{
            id: redwall92
            entityId: "rewall92"
            height: cow
            width: height
            anchors{
                top: redwall90.top
                topMargin: cow
                left: redwall90.left
            }
        }
        RedWall{
            id: redwall93
            entityId: "rewall93"
            height: cow
            width: height
            anchors{
                top: rectangle.top
                topMargin: cow*6
                left: rectangle.left
                leftMargin: cow*18
            }
        }
        RedWall{
            id: redwall94
            entityId: "rewall94"
            height: cow
            width: height
            anchors{
                top: redwall93.top
                left: redwall93.right
            }
        }
        RedWall{
            id: redwall95
            entityId: "rewall95"
            height: cow
            width: height
            anchors{
                top: redwall93.top
                topMargin: cow
                left: redwall93.left
            }
        }
        RedWall{
            id: redwall96
            entityId: "rewall96"
            height: cow
            width: height
            anchors{
                top: redwall94.top
                topMargin: cow
                left: redwall94.left
            }
        }
        RedWall{
            id: redwall97
            entityId: "rewall97"
            height: cow
            width: height
            anchors{
                top: rectangle.top
                topMargin: cow*8
                left: rectangle.left
                leftMargin: cow*18
            }
        }
        RedWall{
            id: redwall98
            entityId: "rewall98"
            height: cow
            width: height
            anchors{
                top: redwall97.top
                left: redwall97.right
            }
        }
        RedWall{
            id: redwall99
            entityId: "rewall99"
            height: cow
            width: height
            anchors{
                top: redwall97.top
                topMargin: cow
                left: redwall97.left
            }
        }
        RedWall{
            id: redwall100
            entityId: "rewall100"
            height: cow
            width: height
            anchors{
                top: redwall98.top
                topMargin: cow
                left: redwall98.left
            }
        }
        RedWall{
            id: redwall101
            entityId: "rewall101"
            height: cow
            width: height
            anchors{
                top: rectangle.top
                topMargin: cow*8
                left: rectangle.left
                leftMargin: cow*18
            }
        }
        RedWall{
            id: redwall102
            entityId: "rewall102"
            height: cow
            width: height
            anchors{
                top: redwall101.top
                left: redwall101.right
            }
        }
        RedWall{
            id: redwall103
            entityId: "rewall103"
            height: cow
            width: height
            anchors{
                top: redwall101.top
                topMargin: cow
                left: redwall101.left
            }
        }
        RedWall{
            id: redwall104
            entityId: "rewall104"
            height: cow
            width: height
            anchors{
                top: redwall102.top
                topMargin: cow
                left: redwall102.left
            }
        }
        RedWall{
            id: redwall105
            entityId: "rewall105"
            height: cow
            width: height
            anchors{
                top: rectangle.top
                topMargin: cow*8
                left: rectangle.left
                leftMargin: cow*16
            }
        }
        RedWall{
            id: redwall106
            entityId: "rewall106"
            height: cow
            width: height
            anchors{
                top: redwall105.top
                left: redwall105.right
            }
        }
        RedWall{
            id: redwall107
            entityId: "rewall107"
            height: cow
            width: height
            anchors{
                top: redwall105.top
                topMargin: cow
                left: redwall105.left
            }
        }
        RedWall{
            id: redwall108
            entityId: "rewall108"
            height: cow
            width: height
            anchors{
                top: redwall106.top
                topMargin: cow
                left: redwall106.left
            }
        }
        Grass{
            id:grass1
            height: cow*2
            width: height
            anchors {
               top: rectangle.top
               topMargin: cow*12
               left: rectangle.left
               leftMargin: 0
            }
        }
        Grass{
            id:grass2
            height: cow*2
            width: height
            anchors {
               top: rectangle.top
               topMargin: cow*4
               left: rectangle.left
               leftMargin: cow*2
            }
        }
        Grass{
            id:grass3
            height: cow*2
            width: height
            anchors {
               top: rectangle.top
               topMargin: cow*6
               left: rectangle.left
               leftMargin: cow*4
            }
        }
        Grass{
            id:grass4
            height: cow*2
            width: height
            anchors {
               top: rectangle.top
               topMargin: cow*8
               left: rectangle.left
               leftMargin: cow*8
            }
        }
        Grass{
            id:grass5
            height: cow*2
            width: height
            anchors {
               top: rectangle.top
               topMargin: cow*14
               left: rectangle.left
               leftMargin: cow*8
            }
        }
        Grass{
            id:grass6
            height: cow*2
            width: height
            anchors {
               top: rectangle.top
               topMargin: cow*16
               left: rectangle.left
               leftMargin: cow*6
            }
        }
        Grass{
            id:grass7
            height: cow*2
            width: height
            anchors {
               top: rectangle.top
               topMargin: cow*8
               left: rectangle.left
               leftMargin: cow*14
            }
        }
        Grass{
            id:grass8
            height: cow*2
            width: height
            anchors {
               top: rectangle.top
               topMargin: cow*14
               left: rectangle.left
               leftMargin: cow*14
            }
        }
        Grass{
            id:grass9
            height: cow*2
            width: height
            anchors {
               top: rectangle.top
               topMargin: cow*6
               left: rectangle.left
               leftMargin: cow*16
            }
        }
        Grass{
            id:grass10

            height: cow*2
            width: height
            anchors {
               top: rectangle.top
               topMargin: 0
               left: rectangle.left
               leftMargin: cow*22
            }
        }








}
