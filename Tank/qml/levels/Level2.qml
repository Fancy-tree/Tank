import QtQuick 2.0
import Felgo 3.0
import "../common" as Common
import ".."
import "../levels"
import "../entities"
Common.LevelBase {
    levelName: "Level2"

    property double cow: rectangle.height/14/2
    property double column: rectangle.height/14/2
    Grass{
        id:grass1
        z:10
        height: cow*2
        width: column*2
        anchors{
            top: rectangle.top
            topMargin: cow*8
            left: rectangle.left
            leftMargin: 0
        }
   }
    Grass{
        id:grass2
        z:10
        height: cow*2
        width: column*2
        anchors{
            top: rectangle.top
            topMargin: cow*10
            left: rectangle.left
            leftMargin: 0
        }
   }
    Grass{
        id:grass3
        z:10
        height: cow*2
        width: column*2
        anchors{
            top: rectangle.top
            topMargin: cow*10
            left: rectangle.left
            leftMargin: cow*2
        }

   }
    Grass{
        id:grass4
        z:10
        height: cow*2
        width: column*2
        anchors{
            top: rectangle.top
            topMargin: cow*12
            left: rectangle.left
            leftMargin: cow*8
        }
   }
    Grass{
        id:grass5
        z:10
        height: cow*2
        width: column*2
        anchors{
            top: rectangle.top
            topMargin: cow*14
            left: rectangle.left
            leftMargin: cow*8
        }
   }
    Grass{
        id:grass6
        z:10
        height: cow*2
        width: column*2
        anchors{
            top: rectangle.top
            topMargin: cow*12
            left: rectangle.left
            leftMargin: cow*10
        }
   }

    Grass{
        id:grass8
        z:10
        height: cow*2
        width: column*2
        anchors{
            top: rectangle.top
            topMargin: cow*8
            left: rectangle.left
            leftMargin: cow*20
        }
   }
    Grass{
        id:grass9
        z:10
        height: cow*2
        width: column*2
        anchors{
            top: rectangle.top
            topMargin: cow*10
            left: rectangle.left
            leftMargin: cow*20
        }
   }
    Grass{
        id:grass10
        z:10
        height: cow*2
        width: column*2
        anchors{
            top: rectangle.top
            topMargin: cow*12
            left: rectangle.left
            leftMargin: cow*20
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
            topMargin: cow*14
            left: rectangle.left
            leftMargin: cow*6
        }
    }
    WhiteWalls{
        id:whitewalls3
        entityId: "whitewalls3"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*16
            left: rectangle.left
            leftMargin: cow*6
        }
    }
    WhiteWalls{
        id:whitewalls4
        entityId: "whitewalls4"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: 0
            left: rectangle.left
            leftMargin: cow*6
        }
    }
    WhiteWalls{
        id:whitewalls5
        entityId: "whitewalls5"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*2
            left: rectangle.left
            leftMargin: cow*6
        }
    }
    WhiteWalls{
        id:whitewalls6
        entityId: "whitwalls6"
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
        id:whitewalls7
        entityId: "whitewalls7"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: 0
            left: rectangle.left
            leftMargin: cow*14
        }
    }
    WhiteWalls{
        id:whitewalls8
        entityId: "whitewalls8"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*12
            left: rectangle.left
            leftMargin: cow*12
        }
    }
    WhiteWalls{
        id:whitewalls9
        entityId: "whitewalls9"
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
        id:whitewalls10
        entityId: "whitewalls10"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*6
            left: rectangle.left
            leftMargin: cow*16
        }
    }
    WhiteWalls{
        id:whitewalls11
        entityId: "whitewalls11"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*4
            left: rectangle.left
            leftMargin: cow*20
        }
    }
    WhiteWalls{
        id:whitewalls12
        entityId: "whitewalls12"
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
        id:whitewalls13
        entityId: "whitewalls13"
        height: cow*2
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*8
            left: rectangle.left
            leftMargin: cow*24
        }
    }
    RedWall{
        id:redwall1
        entityId: "redwall1"
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
        id:redwall2
        entityId: "redwall2"
        height: cow
        width: height
        anchors{
            top: redwall1.top
            left: redwall1.right
        }
    }
    RedWall{
        id:redwall3
        entityId: "redwall3"
        height: cow
        width: height
        anchors{
            top: redwall1.top
            topMargin: cow
            left: redwall1.left

        }
    }
    RedWall{
        id:redwall4
        entityId: "redwall4"
        height: cow
        width: height
        anchors{
            top: redwall2.top
            topMargin: cow
            left: redwall2.left

        }
    }
    RedWall{
        id:redwall5
        entityId: "redwall5"
        height: cow
        width: height
        anchors{
            top: redwall1.top
            topMargin: cow*2
            left: redwall1.left

        }
    }
    RedWall{
        id:redwall6
        entityId: "redwall6"
        height: cow
        width: height
        anchors{
            top: redwall2.top
            topMargin: cow*2
            left: redwall2.left
        }
    }
    RedWall{
        id:redwall7
        entityId: "redwall7"
        height: cow
        width: height
        anchors{
            top: redwall1.top
            topMargin: cow*3
            left: redwall1.left

        }
    }
    RedWall{
        id:redwall8
        entityId: "redwall8"
        height: cow
        width: height
        anchors{
            top: redwall2.top
            topMargin: cow*3
            left: redwall2.left

        }
    }
    RedWall{
        id:redwall9
        entityId: "redwall9"
        height: cow
        width: height
        anchors{
            top: redwall1.top
            topMargin: cow*10
            left: redwall1.left

        }
    }
    RedWall{
        id:redwall10
        entityId: "redwall10"
        height: cow
        width: height
        anchors{
            top: redwall2.top
            topMargin: cow*10
            left: redwall2.left
        }
    }
    RedWall{
        id:redwall11
        entityId: "redwall11"
        height: cow
        width: height
        anchors{
            top: redwall1.top
            topMargin: cow*11
            left: redwall1.left

        }
    }
    RedWall{
        id:redwall12
        entityId: "redwall12"
        height: cow
        width: height
        anchors{
            top: redwall2.top
            topMargin: cow*11
            left: redwall2.left

        }
    }
    RedWall{
        id:redwall13
        entityId: "redwall13"
        height: cow
        width: height
        anchors{
            top: redwall1.top
            topMargin: cow*14
            left: redwall1.left

        }
    }
    RedWall{
        id:redwall14
        entityId: "redwall14"
        height: cow
        width: height
        anchors{
            top: redwall2.top
            topMargin: cow*14
            left: redwall2.left
        }
    }
    RedWall{
        id:redwall15
        entityId: "redwall15"
        height: cow
        width: height
        anchors{
            top: redwall1.top
            topMargin: cow*15
            left: redwall1.left

        }
    }
    RedWall{
        id:redwall16
        entityId: "redwall16"
        height: cow
        width: height
        anchors{
            top: redwall2.top
            topMargin: cow*15
            left: redwall2.left

        }
    }
    RedWall{
        id:redwall17
        entityId: "redwall17"
        height: cow
        width: height
        anchors{
            top: redwall1.top
            topMargin: cow*16
            left: redwall1.left

        }
    }
    RedWall{
        id:redwall18
        entityId: "redwall18"
        height: cow
        width: height
        anchors{
            top: redwall2.top
            topMargin: cow*16
            left: redwall2.left
        }
    }
    RedWall{
        id:redwall19
        entityId: "redwall19"
        height: cow
        width: height
        anchors{
            top: redwall1.top
            topMargin: cow*17
            left: redwall1.left

        }
    }
    RedWall{
        id:redwall20
        entityId: "redwall20"
        height: cow
        width: height
        anchors{
            top: redwall2.top
            topMargin: cow*17
            left: redwall2.left

        }
    }
    RedWall{
        id:redwall21
        entityId: "redwall21"
        height: cow
        width: height
        anchors{
            top: redwall1.top
            topMargin: cow*18
            left: redwall1.left

        }
    }
    RedWall{
        id:redwall22
        entityId: "redwall22"
        height: cow
        width: height
        anchors{
            top: redwall2.top
            topMargin: cow*18
            left: redwall2.left
        }
    }
    RedWall{
        id:redwall23
        entityId: "redwall23"
        height: cow
        width: height
        anchors{
            top: redwall1.top
            topMargin: cow*19
            left: redwall1.left

        }
    }
    RedWall{
        id:redwall24
        entityId: "redwall24"
        height: cow
        width: height
        anchors{
            top: redwall2.top
            topMargin: cow*19
            left: redwall2.left

        }
    }
    RedWall{
        id:redwall25
        entityId: "redwall25"
        height: cow
        width: height
        anchors{
            top: redwall1.top
            topMargin: cow*22
            left: redwall1.left

        }
    }
    RedWall{
        id:redwall26
        entityId: "redwall26"
        height: cow
        width: height
        anchors{
            top: redwall2.top
            topMargin: cow*22
            left: redwall2.left
        }
    }
    RedWall{
        id:redwall27
        entityId: "redwall27"
        height: cow
        width: height
        anchors{
            top: redwall1.top
            topMargin: cow*23
            left: redwall1.left

        }
    }
    RedWall{
        id:redwall28
        entityId: "redwall28"
        height: cow
        width: height
        anchors{
            top: redwall2.top
            topMargin: cow*23
            left: redwall2.left

        }
    }
    RedWall{
        id:redwall29
        entityId: "redwall1"
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
        id:redwall30
        entityId: "redwall30"
        height: cow
        width: height
        anchors{
            top: redwall29.top
            left: redwall29.right
        }
    }
    RedWall{
        id:redwall31
        entityId: "redwall31"
        height: cow
        width: height
        anchors{
            top: redwall29.top
            topMargin: cow
            left: redwall29.left

        }
    }
    RedWall{
        id:redwall32
        entityId: "redwall32"
        height: cow
        width: height
        anchors{
            top: redwall30.top
            topMargin: cow
            left: redwall30.left

        }
    }
    RedWall{
        id:redwall33
        entityId: "redwall33"
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
        id:redwall34
        entityId: "redwall34"
        height: cow
        width: height
        anchors{
            top: redwall33.top
            left: redwall33.right
        }
    }
    RedWall{
        id:redwall35
        entityId: "redwall35"
        height: cow
        width: height
        anchors{
            top: redwall33.top
            topMargin: cow
            left: redwall33.left

        }
    }
    RedWall{
        id:redwall36
        entityId: "redwall36"
        height: cow
        width: height
        anchors{
            top: redwall34.top
            topMargin: cow
            left: redwall34.left

        }
    }
    RedWall{
        id:redwall37
        entityId: "redwall37"
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
        id:redwall38
        entityId: "redwall38"
        height: cow
        width: height
        anchors{
            top: redwall37.top
            left: redwall37.right
        }
    }
    RedWall{
        id:redwall39
        entityId: "redwall39"
        height: cow
        width: height
        anchors{
            top: redwall37.top
            topMargin: cow
            left: redwall37.left

        }
    }
    RedWall{
        id:redwall40
        entityId: "redwall40"
        height: cow
        width: height
        anchors{
            top: redwall38.top
            topMargin: cow
            left: redwall38.left

        }
    }
    RedWall{
        id:redwall41
        entityId: "redwall41"
        height: cow
        width: height
        anchors{
            top: redwall37.top
            topMargin: cow*2
            left: redwall37.left

        }
    }
    RedWall{
        id:redwall42
        entityId: "redwall42"
        height: cow
        width: height
        anchors{
            top: redwall38.top
            topMargin: cow*2
            left: redwall38.left

        }
    }
    RedWall{
        id:redwall43
        entityId: "redwall43"
        height: cow
        width: height
        anchors{
            top: redwall37.top
            topMargin: cow*3
            left: redwall37.left

        }
    }
    RedWall{
        id:redwall44
        entityId: "redwall44"
        height: cow
        width: height
        anchors{
            top: redwall38.top
            topMargin: cow*3
            left: redwall38.left

        }
    }
    RedWall{
        id:redwall45
        entityId: "redwall45"
        height: cow
        width: height
        anchors{
            top: redwall37.top
            topMargin: cow*4
            left: redwall37.left

        }
    }
    RedWall{
        id:redwall46
        entityId: "redwall40"
        height: cow
        width: height
        anchors{
            top: redwall38.top
            topMargin: cow*4
            left: redwall38.left

        }
    }
    RedWall{
        id:redwall47
        entityId: "redwall47"
        height: cow
        width: height
        anchors{
            top: redwall37.top
            topMargin: cow*7
            left: redwall37.left

        }
    }
    RedWall{
        id:redwall48
        entityId: "redwall48"
        height: cow
        width: height
        anchors{
            top: redwall38.top
            topMargin: cow*7
            left: redwall38.left

        }
    }
    RedWall{
        id:redwall49
        entityId: "redwall49"
        height: cow
        width: height
        anchors{
            top: redwall37.top
            topMargin: cow*8
            left: redwall37.left

        }
    }
    RedWall{
        id:redwall50
        entityId: "redwall40"
        height: cow
        width: height
        anchors{
            top: redwall38.top
            topMargin: cow*8
            left: redwall38.left

        }
    }
    RedWall{
        id:redwall51
        entityId: "redwall51"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*10
            left: rectangle.left
            leftMargin: cow*10
        }
    }
    RedWall{
        id:redwall52
        entityId: "redwall52"
        height: cow
        width: height
        anchors{
            top: redwall51.top
            left: redwall51.right
        }
    }
    RedWall{
        id:redwall53
        entityId: "redwall53"
        height: cow
        width: height
        anchors{
            top: redwall51.top
            topMargin: cow
            left: redwall51.left

        }
    }
    RedWall{
        id:redwall54
        entityId: "redwall54"
        height: cow
        width: height
        anchors{
            top: redwall52.top
            topMargin: cow
            left: redwall52.left

        }
    }
    RedWall{
        id:redwall55
        entityId: "redwall55"
        height: cow
        width: height
        anchors{
            top: redwall51.top
            topMargin: cow*4
            left: redwall51.left

        }
    }
    RedWall{
        id:redwall56
        entityId: "redwall56"
        height: cow
        width: height
        anchors{
            top: redwall52.top
            topMargin: cow*4
            left: redwall52.left

        }
    }
    RedWall{
        id:redwall57
        entityId: "redwall57"
        height: cow
        width: height
        anchors{
            top: redwall51.top
            topMargin: cow*5
            left: redwall51.left

        }
    }
    RedWall{
        id:redwall58
        entityId: "redwall58"
        height: cow
        width: height
        anchors{
            top: redwall52.top
            topMargin: cow*5
            left: redwall52.left

        }
    }
    RedWall{
        id:redwall59
        entityId: "redwall59"
        height: cow
        width: height
        anchors{
            top: redwall51.top
            topMargin: cow*6
            left: redwall51.left

        }
    }
    RedWall{
        id:redwall60
        entityId: "redwall60"
        height: cow
        width: height
        anchors{
            top: redwall52.top
            topMargin: cow*6
            left: redwall52.left

        }
    }
    RedWall{
        id:redwall61
        entityId: "redwall61"
        height: cow
        width: height
        anchors{
            top: redwall51.top
            topMargin: cow*7
            left: redwall51.left

        }
    }
    RedWall{
        id:redwall62
        entityId: "redwall62"
        height: cow
        width: height
        anchors{
            top: redwall52.top
            topMargin: cow*7
            left: redwall52.left

        }
    }
    RedWall{
        id:redwall63
        entityId: "redwall63"
        height: cow
        width: height
        anchors{
            top: redwall51.top
            topMargin: cow*8
            left: redwall51.left

        }
    }
    RedWall{
        id:redwall64
        entityId: "redwall64"
        height: cow
        width: height
        anchors{
            top: redwall52.top
            topMargin: cow*8
            left: redwall52.left

        }
    }
    RedWall{
        id:redwall65
        entityId: "redwall65"
        height: cow
        width: height
        anchors{
            top: redwall51.top
            topMargin: cow*9
            left: redwall51.left

        }
    }
    RedWall{
        id:redwall66
        entityId: "redwall66"
        height: cow
        width: height
        anchors{
            top: redwall52.top
            topMargin: cow*9
            left: redwall52.left

        }
    }
    RedWall{
        id:redwall67
        entityId: "redwall67"
        height: cow
        width: height
        anchors{
            top: redwall51.top
            topMargin: cow*10
            left: redwall51.left

        }
    }
    RedWall{
        id:redwall68
        entityId: "redwall68"
        height: cow
        width: height
        anchors{
            top: redwall52.top
            topMargin: cow*10
            left: redwall52.left

        }
    }
    RedWall{
        id:redwall69
        entityId: "redwall69"
        height: cow
        width: height
        anchors{
            top: redwall51.top
            topMargin: cow*11
            left: redwall51.left

        }
    }
    RedWall{
        id:redwall70
        entityId: "redwall70"
        height: cow
        width: height
        anchors{
            top: redwall52.top
            topMargin: cow*11
            left: redwall52.left

        }
    }
    RedWall{
        id:redwall71
        entityId: "redwall71"
        height: cow
        width: height
        anchors{
            top: redwall51.top
            topMargin: cow*12
            left: redwall51.left

        }
    }
    RedWall{
        id:redwall72
        entityId: "redwall72"
        height: cow
        width: height
        anchors{
            top: redwall52.top
            topMargin: cow*12
            left: redwall52.left

        }
    }
    RedWall{
        id:redwall73
        entityId: "redwall73"
        height: cow
        width: height
        anchors{
            top: redwall51.top
            topMargin: cow*13
            left: redwall51.left

        }
    }
    RedWall{
        id:redwall74
        entityId: "redwall74"
        height: cow
        width: height
        anchors{
            top: redwall52.top
            topMargin: cow*13
            left: redwall52.left

        }
    }
    RedWall{
        id:redwall75
        entityId: "redwall1"
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
        id:redwall76
        entityId: "redwall76"
        height: cow
        width: height
        anchors{
            top: redwall75.top
            left: redwall75.right
        }
    }
    RedWall{
        id:redwall77
        entityId: "redwall77"
        height: cow
        width: height
        anchors{
            top: redwall75.top
            topMargin: cow
            left: redwall75.left

        }
    }
    RedWall{
        id:redwall78
        entityId: "redwall78"
        height: cow
        width: height
        anchors{
            top: redwall76.top
            topMargin: cow
            left: redwall76.left

        }
    }
    RedWall{
        id:redwall81
        entityId: "redwall81"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*18
            left: rectangle.left
            leftMargin: cow*12
        }
    }
    RedWall{
        id:redwall82
        entityId: "redwall82"
        height: cow
        width: height
        anchors{
            top: redwall81.top
            left: redwall81.right
        }
    }
    RedWall{
        id:redwall83
        entityId: "redwall83"
        height: cow
        width: height
        anchors{
            top: redwall81.top
            topMargin: cow
            left: redwall81.left

        }
    }
    RedWall{
        id:redwall84
        entityId: "redwall84"
        height: cow
        width: height
        anchors{
            top: redwall82.top
            topMargin: cow
            left: redwall82.left

        }
    }
    RedWall{
        id:redwall85
        entityId: "redwall85"
        height: cow
        width: height
        anchors{
            top: redwall81.top
            topMargin: cow*2
            left: redwall81.left

        }
    }
    RedWall{
        id:redwall86
        entityId: "redwall86"
        height: cow
        width: height
        anchors{
            top: redwall82.top
            topMargin: cow*2
            left: redwall82.left

        }
    }
    RedWall{
        id:redwall87
        entityId: "redwall87"
        height: cow
        width: height
        anchors{
            top: redwall81.top
            topMargin: cow*3
            left: redwall81.left

        }
    }
    RedWall{
        id:redwall88
        entityId: "redwall88"
        height: cow
        width: height
        anchors{
            top: redwall82.top
            topMargin: cow*3
            left: redwall82.left

        }
    }
    RedWall{
        id:redwall89
        entityId: "redwall89"
        height: cow
        width: height
        anchors{
            top: redwall81.top
            topMargin: cow*4
            left: redwall81.left

        }
    }
    RedWall{
        id:redwall90
        entityId: "redwall90"
        height: cow
        width: height
        anchors{
            top: redwall82.top
            topMargin: cow*4
            left: redwall82.left

        }
    }
    RedWall{
        id:redwall91
        entityId: "redwall91"
        height: cow
        width: height
        anchors{
            top: redwall81.top
            topMargin: cow*5
            left: redwall81.left

        }
    }
    RedWall{
        id:redwall92
        entityId: "redwall92"
        height: cow
        width: height
        anchors{
            top: redwall82.top
            topMargin: cow*5
            left: redwall82.left

        }
    }
    RedWall{
        id:redwall93
        entityId: "redwall93"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*2
            left: rectangle.left
            leftMargin: cow*14
        }
    }
    RedWall{
        id:redwall94
        entityId: "redwall94"
        height: cow
        width: height
        anchors{
            top: redwall93.top
            left: redwall93.right
        }
    }
    RedWall{
        id:redwall95
        entityId: "redwall95"
        height: cow
        width: height
        anchors{
            top: redwall93.top
            topMargin: cow
            left: redwall93.left

        }
    }
    RedWall{
        id:redwall96
        entityId: "redwall96"
        height: cow
        width: height
        anchors{
            top: redwall94.top
            topMargin: cow
            left: redwall94.left

        }
    }
    RedWall{
        id:redwall97
        entityId: "redwall97"
        height: cow
        width: height
        anchors{
            top: redwall93.top
            topMargin: cow*2
            left: redwall93.left

        }
    }
    RedWall{
        id:redwall98
        entityId: "redwall98"
        height: cow
        width: height
        anchors{
            top: redwall94.top
            topMargin: cow*2
            left: redwall94.left

        }
    }
    RedWall{
        id:redwall99
        entityId: "redwall99"
        height: cow
        width: height
        anchors{
            top: redwall93.top
            topMargin: cow*3
            left: redwall93.left

        }
    }
    RedWall{
        id:redwall100
        entityId: "redwall100"
        height: cow
        width: height
        anchors{
            top: redwall94.top
            topMargin: cow*3
            left: redwall94.left

        }
    }
    RedWall{
        id:redwall101
        entityId: "redwall101"
        height: cow
        width: height
        anchors{
            top: redwall93.top
            topMargin: cow*12
            left: redwall93.left

        }
    }
    RedWall{
        id:redwall102
        entityId: "redwall102"
        height: cow
        width: height
        anchors{
            top: redwall94.top
            topMargin: cow*12
            left: redwall94.left

        }
    }
    RedWall{
        id:redwall103
        entityId: "redwall103"
        height: cow
        width: height
        anchors{
            top: redwall93.top
            topMargin: cow*13
            left: redwall93.left

        }
    }
    RedWall{
        id:redwall104
        entityId: "redwall104"
        height: cow
        width: height
        anchors{
            top: redwall94.top
            topMargin: cow*13
            left: redwall94.left

        }
    }
    RedWall{
        id:redwall105
        entityId: "redwall105"
        height: cow
        width: height
        anchors{
            top: redwall93.top
            topMargin: cow*14
            left: redwall93.left

        }
    }
    RedWall{
        id:redwall106
        entityId: "redwall106"
        height: cow
        width: height
        anchors{
            top: redwall94.top
            topMargin: cow*14
            left: redwall94.left

        }
    }
    RedWall{
        id:redwall107
        entityId: "redwall108"
        height: cow
        width: height
        anchors{
            top: redwall93.top
            topMargin: cow*15
            left: redwall93.left

        }
    }
    RedWall{
        id:redwall108
        entityId: "redwall108"
        height: cow
        width: height
        anchors{
            top: redwall94.top
            topMargin: cow*15
            left: redwall94.left

        }
    }
    RedWall{
        id:redwall109
        entityId: "redwall109"
        height: cow
        width: height
        anchors{
            top: redwall93.top
            topMargin: cow*16
            left: redwall93.left

        }
    }
    RedWall{
        id:redwall110
        entityId: "redwall110"
        height: cow
        width: height
        anchors{
            top: redwall94.top
            topMargin: cow*16
            left: redwall94.left

        }
    }
    RedWall{
        id:redwall111
        entityId: "redwall111"
        height: cow
        width: height
        anchors{
            top: redwall93.top
            topMargin: cow*17
            left: redwall93.left

        }
    }
    RedWall{
        id:redwall112
        entityId: "redwall112"
        height: cow
        width: height
        anchors{
            top: redwall94.top
            topMargin: cow*17
            left: redwall94.left

        }
    }
    RedWall{
        id:redwall113
        entityId: "redwall113"
        height: cow
        width: height
        anchors{
            top: redwall93.top
            topMargin: cow*18
            left: redwall93.left

        }
    }
    RedWall{
        id:redwall114
        entityId: "redwall114"
        height: cow
        width: height
        anchors{
            top: redwall94.top
            topMargin: cow*18
            left: redwall94.left

        }
    }
    RedWall{
        id:redwall115
        entityId: "redwall115"
        height: cow
        width: height
        anchors{
            top: redwall93.top
            topMargin: cow*19
            left: redwall93.left

        }
    }
    RedWall{
        id:redwall116
        entityId: "redwall116"
        height: cow
        width: height
        anchors{
            top: redwall94.top
            topMargin: cow*19
            left: redwall94.left

        }
    }
    RedWall{
        id:redwall117
        entityId: "redwall117"
        height: cow
        width: height
        anchors{
            top: redwall93.top
            topMargin: cow*20
            left: redwall93.left

        }
    }
    RedWall{
        id:redwall118
        entityId: "redwall118"
        height: cow
        width: height
        anchors{
            top: redwall94.top
            topMargin: cow*20
            left: redwall94.left

        }
    }
    RedWall{
        id:redwall119
        entityId: "redwall119"
        height: cow
        width: height
        anchors{
            top: redwall93.top
            topMargin: cow*21
            left: redwall93.left

        }
    }
    RedWall{
        id:redwall120
        entityId: "redwall120"
        height: cow
        width: height
        anchors{
            top: redwall94.top
            topMargin: cow*21
            left: redwall94.left

        }
    }
    RedWall{
        id:redwall121
        entityId: "redwall121"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*2
            left: rectangle.left
            leftMargin: cow*18
        }
    }
    RedWall{
        id:redwall122
        entityId: "redwall122"
        height: cow
        width: height
        anchors{
            top: redwall121.top
            left: redwall121.right
        }
    }
    RedWall{
        id:redwall123
        entityId: "redwall123"
        height: cow
        width: height
        anchors{
            top: redwall121.top
            topMargin: cow
            left: redwall121.left

        }
    }
    RedWall{
        id:redwall124
        entityId: "redwall124"
        height: cow
        width: height
        anchors{
            top: redwall122.top
            topMargin: cow
            left: redwall122.left

        }
    }
    RedWall{
        id:redwall125
        entityId: "redwall125"
        height: cow
        width: height
        anchors{
            top: redwall121.top
            topMargin: cow*2
            left: redwall121.left

        }
    }
    RedWall{
        id:redwall126
        entityId: "redwall126"
        height: cow
        width: height
        anchors{
            top: redwall122.top
            topMargin: cow*2
            left: redwall122.left

        }
    }
    RedWall{
        id:redwall127
        entityId: "redwall127"
        height: cow
        width: height
        anchors{
            top: redwall121.top
            topMargin: cow*3
            left: redwall121.left

        }
    }
    RedWall{
        id:redwall128
        entityId: "redwall128"
        height: cow
        width: height
        anchors{
            top: redwall122.top
            topMargin: cow*3
            left: redwall122.left

        }
    }
    RedWall{
        id:redwall129
        entityId: "redwall129"
        height: cow
        width: height
        anchors{
            top: redwall121.top
            topMargin: cow*6
            left: redwall121.left

        }
    }
    RedWall{
        id:redwall130
        entityId: "redwall130"
        height: cow
        width: height
        anchors{
            top: redwall122.top
            topMargin: cow*6
            left: redwall122.left

        }
    }
    RedWall{
        id:redwall131
        entityId: "redwall131"
        height: cow
        width: height
        anchors{
            top: redwall121.top
            topMargin: cow*7
            left: redwall121.left

        }
    }
    RedWall{
        id:redwall132
        entityId: "redwall132"
        height: cow
        width: height
        anchors{
            top: redwall122.top
            topMargin: cow*7
            left: redwall122.left

        }
    }
    RedWall{
        id:redwall133
        entityId: "redwall133"
        height: cow
        width: height
        anchors{
            top: redwall121.top
            topMargin: cow*12
            left: redwall121.left

        }
    }
    RedWall{
        id:redwall134
        entityId: "redwall134"
        height: cow
        width: height
        anchors{
            top: redwall122.top
            topMargin: cow*12
            left: redwall122.left

        }
    }
    RedWall{
        id:redwall135
        entityId: "redwall135"
        height: cow
        width: height
        anchors{
            top: redwall121.top
            topMargin: cow*13
            left: redwall121.left

        }
    }
    RedWall{
        id:redwall136
        entityId: "redwall136"
        height: cow
        width: height
        anchors{
            top: redwall122.top
            topMargin: cow*13
            left: redwall122.left

        }
    }
    RedWall{
        id:redwall137
        entityId: "redwall137"
        height: cow
        width: height
        anchors{
            top: redwall121.top
            topMargin: cow*16
            left: redwall121.left

        }
    }
    RedWall{
        id:redwall138
        entityId: "redwall138"
        height: cow
        width: height
        anchors{
            top: redwall122.top
            topMargin: cow*16
            left: redwall122.left

        }
    }
    RedWall{
        id:redwall139
        entityId: "redwall139"
        height: cow
        width: height
        anchors{
            top: redwall121.top
            topMargin: cow*17
            left: redwall121.left

        }
    }
    RedWall{
        id:redwall140
        entityId: "redwall124"
        height: cow
        width: height
        anchors{
            top: redwall122.top
            topMargin: cow*17
            left: redwall122.left

        }
    }
    RedWall{
        id:redwall141
        entityId: "redwall141"
        height: cow
        width: height
        anchors{
            top: redwall121.top
            topMargin: cow*20
            left: redwall121.left

        }
    }
    RedWall{
        id:redwall142
        entityId: "redwall142"
        height: cow
        width: height
        anchors{
            top: redwall122.top
            topMargin: cow*20
            left: redwall122.left

        }
    }
    RedWall{
        id:redwall143
        entityId: "redwall143"
        height: cow
        width: height
        anchors{
            top: redwall121.top
            topMargin: cow*21
            left: redwall121.left

        }
    }
    RedWall{
        id:redwall144
        entityId: "redwall144"
        height: cow
        width: height
        anchors{
            top: redwall122.top
            topMargin: cow*21
            left: redwall122.left

        }
    }
    RedWall{
        id:redwall145
        entityId: "redwall145"
        height: cow
        width: height
        anchors{
            top: redwall121.top
            topMargin: cow*22
            left: redwall121.left

        }
    }
    RedWall{
        id:redwall146
        entityId: "redwall146"
        height: cow
        width: height
        anchors{
            top: redwall122.top
            topMargin: cow*22
            left: redwall122.left

        }
    }
    RedWall{
        id:redwall147
        entityId: "redwall147"
        height: cow
        width: height
        anchors{
            top: redwall121.top
            topMargin: cow*23
            left: redwall121.left

        }
    }
    RedWall{
        id:redwall148
        entityId: "redwall148"
        height: cow
        width: height
        anchors{
            top: redwall122.top
            topMargin: cow*23
            left: redwall122.left

        }
    }
    RedWall{
        id:redwall149
        entityId: "redwall149"
        height: cow
        width: height
        anchors{
            top: redwall121.top
            topMargin: cow*24
            left: redwall121.left

        }
    }
    RedWall{
        id:redwall150
        entityId: "redwall150"
        height: cow
        width: height
        anchors{
            top: redwall122.top
            topMargin: cow*24
            left: redwall122.left

        }
    }
    RedWall{
        id:redwall151
        entityId: "redwall151"
        height: cow
        width: height
        anchors{
            top: redwall121.top
            topMargin: cow*25
            left: redwall121.left

        }
    }
    RedWall{
        id:redwall152
        entityId: "redwall152"
        height: cow
        width: height
        anchors{
            top: redwall122.top
            topMargin: cow*25
            left: redwall122.left

        }
    }
    RedWall{
        id:redwall161
        entityId: "redwall161"
        height: cow
        width: height
        anchors{
            top: rectangle.top
            topMargin: cow*2
            left: rectangle.left
            leftMargin: cow*22
        }
    }
    RedWall{
        id:redwall162
        entityId: "redwall162"
        height: cow
        width: height
        anchors{
            top: redwall161.top
            left: redwall161.right
        }
    }
    RedWall{
        id:redwall163
        entityId: "redwall163"
        height: cow
        width: height
        anchors{
            top: redwall161.top
            topMargin: cow
            left: redwall161.left

        }
    }
    RedWall{
        id:redwall164
        entityId: "redwall164"
        height: cow
        width: height
        anchors{
            top: redwall162.top
            topMargin: cow
            left: redwall162.left

        }
    }
    RedWall{
        id:redwall165
        entityId: "redwall165"
        height: cow
        width: height
        anchors{
            top: redwall161.top
            topMargin: cow*2
            left: redwall161.left

        }
    }
    RedWall{
        id:redwall166
        entityId: "redwall166"
        height: cow
        width: height
        anchors{
            top: redwall162.top
            topMargin: cow*2
            left: redwall162.left

        }
    }
    RedWall{
        id:redwall167
        entityId: "redwall167"
        height: cow
        width: height
        anchors{
            top: redwall161.top
            topMargin: cow*3
            left: redwall161.left

        }
    }
    RedWall{
        id:redwall168
        entityId: "redwall168"
        height: cow
        width: height
        anchors{
            top: redwall162.top
            topMargin: cow*3
            left: redwall162.left

        }
    }
    RedWall{
        id:redwall169
        entityId: "redwall169"
        height: cow
        width: height
        anchors{
            top: redwall161.top
            topMargin: cow*6
            left: redwall161.left

        }
    }
    RedWall{
        id:redwall170
        entityId: "redwall170"
        height: cow
        width: height
        anchors{
            top: redwall162.top
            topMargin: cow*6
            left: redwall162.left

        }
    }
    RedWall{
        id:redwall171
        entityId: "redwall171"
        height: cow
        width: height
        anchors{
            top: redwall161.top
            topMargin: cow*7
            left: redwall161.left

        }
    }
    RedWall{
        id:redwall172
        entityId: "redwall172"
        height: cow
        width: height
        anchors{
            top: redwall162.top
            topMargin: cow*7
            left: redwall162.left

        }
    }
    RedWall{
        id:redwall173
        entityId: "redwall173"
        height: cow
        width: height
        anchors{
            top: redwall161.top
            topMargin: cow*8
            left: redwall161.left

        }
    }
    RedWall{
        id:redwall174
        entityId: "redwall174"
        height: cow
        width: height
        anchors{
            top: redwall162.top
            topMargin: cow*8
            left: redwall162.left

        }
    }
    RedWall{
        id:redwall175
        entityId: "redwall175"
        height: cow
        width: height
        anchors{
            top: redwall161.top
            topMargin: cow*9
            left: redwall161.left

        }
    }
    RedWall{
        id:redwall176
        entityId: "redwall176"
        height: cow
        width: height
        anchors{
            top: redwall162.top
            topMargin: cow*9
            left: redwall162.left

        }
    }
    RedWall{
        id:redwall177
        entityId: "redwall177"
        height: cow
        width: height
        anchors{
            top: redwall161.top
            topMargin: cow*12
            left: redwall161.left

        }
    }
    RedWall{
        id:redwall178
        entityId: "redwall178"
        height: cow
        width: height
        anchors{
            top: redwall162.top
            topMargin: cow*12
            left: redwall162.left

        }
    }
    RedWall{
        id:redwall179
        entityId: "redwall179"
        height: cow
        width: height
        anchors{
            top: redwall161.top
            topMargin: cow*13
            left: redwall161.left

        }
    }
    RedWall{
        id:redwall180
        entityId: "redwall180"
        height: cow
        width: height
        anchors{
            top: redwall162.top
            topMargin: cow*13
            left: redwall162.left

        }
    }
    RedWall{
        id:redwall181
        entityId: "redwall181"
        height: cow
        width: height
        anchors{
            top: redwall161.top
            topMargin: cow*14
            left: redwall161.left

        }
    }
    RedWall{
        id:redwall182
        entityId: "redwall182"
        height: cow
        width: height
        anchors{
            top: redwall162.top
            topMargin: cow*14
            left: redwall162.left

        }
    }
    RedWall{
        id:redwall183
        entityId: "redwall183"
        height: cow
        width: height
        anchors{
            top: redwall161.top
            topMargin: cow*15
            left: redwall161.left

        }
    }
    RedWall{
        id:redwall184
        entityId: "redwall164"
        height: cow
        width: height
        anchors{
            top: redwall162.top
            topMargin: cow*15
            left: redwall162.left

        }
    }
    RedWall{
        id:redwall185
        entityId: "redwall185"
        height: cow
        width: height
        anchors{
            top: redwall161.top
            topMargin: cow*16
            left: redwall161.left

        }
    }
    RedWall{
        id:redwall186
        entityId: "redwall186"
        height: cow
        width: height
        anchors{
            top: redwall162.top
            topMargin: cow*16
            left: redwall162.left

        }
    }
    RedWall{
        id:redwall187
        entityId: "redwall187"
        height: cow
        width: height
        anchors{
            top: redwall161.top
            topMargin: cow*17
            left: redwall161.left

        }
    }
    RedWall{
        id:redwall188
        entityId: "redwall188"
        height: cow
        width: height
        anchors{
            top: redwall162.top
            topMargin: cow*17
            left: redwall162.left

        }
    }
    RedWall{
        id:redwall189
        entityId: "redwall189"
        height: cow
        width: height
        anchors{
            top: redwall161.top
            topMargin: cow*18
            left: redwall161.left

        }
    }
    RedWall{
        id:redwall190
        entityId: "redwall190"
        height: cow
        width: height
        anchors{
            top: redwall162.top
            topMargin: cow*18
            left: redwall162.left

        }
    }
    RedWall{
        id:redwall191
        entityId: "redwall191"
        height: cow
        width: height
        anchors{
            top: redwall161.top
            topMargin: cow*19
            left: redwall161.left

        }
    }
    RedWall{
        id:redwall192
        entityId: "redwall192"
        height: cow
        width: height
        anchors{
            top: redwall162.top
            topMargin: cow*19
            left: redwall162.left

        }
    }


}

