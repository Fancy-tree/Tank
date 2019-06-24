import QtQuick 2.0
import Felgo 3.0
import "../common" as Common
import ".."
import "../levels"
import "../entities"
Common.LevelBase {
    levelName: "Level3"

    property double cow: rectangle.height/14/2
    property double column: rectangle.height/14/2
   WhiteWall{
       id:white1
       entityId: "white1"
       width: cow
       height: width
       anchors{
           top: rectangle.top
           topMargin: cow*14
           left: rectangle.left
       }
   }
   WhiteWall{
       id:white2
       entityId: "white2"
       width: cow
       height: width
       anchors{
           top: rectangle.top
           topMargin: cow*15
           left: rectangle.left
       }
   }
   WhiteWall{
       id:white3
       entityId: "white3"
       width: cow
       height: width
       anchors{
           top: rectangle.top
           topMargin: cow*27
           left: rectangle.left
       }
   }
   WhiteWall{
       id:white4
       entityId: "white4"
       width: cow
       height: width
       anchors{
           top: rectangle.top
           topMargin: cow*27
           left: rectangle.left
           leftMargin: cow
       }
   }
   WhiteWall{
       id:white5
       entityId: "white5"
       width: cow
       height: width
       anchors{
           top: rectangle.top
           topMargin: cow*27
           left: rectangle.left
           leftMargin: cow*2
       }
   }
   WhiteWall{
       id:white6
       entityId: "white6"
       width: cow
       height: width
       anchors{
           top: rectangle.top
           topMargin: cow*27
           left: rectangle.left
           leftMargin: cow*3
       }
   }
   WhiteWall{
       id:white7
       entityId: "white7"
       width: cow
       height: width
       anchors{
           top: rectangle.top
           topMargin: cow*12
           left: rectangle.left
           leftMargin: cow*3
       }
   }
   WhiteWall{
       id:white8
       entityId: "white8"
       width: cow
       height: width
       anchors{
           top: rectangle.top
           topMargin: cow*13
           left: rectangle.left
           leftMargin: cow*3
       }
   }
   WhiteWall{
       id:white9
       entityId: "white9"
       width: cow
       height: width
       anchors{
           top: rectangle.top
           topMargin: cow*16
           left: rectangle.left
           leftMargin: cow*3
       }
   }
   WhiteWall{
       id:white10
       entityId: "white10"
       width: cow
       height: width
       anchors{
           top: rectangle.top
           topMargin: cow*17
           left: rectangle.left
           leftMargin: cow*3
       }
   }
   WhiteWall{
       id:white11
       entityId: "white11"
       width: cow
       height: width
       anchors{
           top: rectangle.top
           topMargin: cow*20
           left: rectangle.left
           leftMargin: cow*4
       }
   }
   WhiteWall{
       id:white12
       entityId: "white12"
       width: cow
       height: width
       anchors{
           top: rectangle.top
           topMargin: cow*20
           left: rectangle.left
           leftMargin: cow*5
       }
   }
   WhiteWalls{
       id:whites1
       entityId: "whites1"
       width: cow*2
       height: width
       anchors{
           top: rectangle.top
           topMargin: cow*6
           left: rectangle.left
           leftMargin: cow*2
       }
   }
      WhiteWalls{
          id:whites2
          entityId: "whites2"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*10
              left: rectangle.left
              leftMargin: cow*2
          }
      }
      WhiteWalls{
          id:whites3
          entityId: "whites3"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*18
              left: rectangle.left
              leftMargin: cow*2
          }
      }
      WhiteWalls{
          id:whites4
          entityId: "whites4"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*22
              left: rectangle.left
              leftMargin: cow*2
          }
      }
      WhiteWalls{
          id:whites5
          entityId: "whites5"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*2
              left: rectangle.left
              leftMargin: cow*4
          }
      }
      WhiteWalls{
          id:whites6
          entityId: "whites6"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*4
              left: rectangle.left
              leftMargin: cow*4
          }
      }
      WhiteWalls{
          id:whites7
          entityId: "whites7"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*16
              left: rectangle.left
              leftMargin: cow*4
          }
      }
      WhiteWalls{
          id:whites8
          entityId: "whites8"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*20
              left: rectangle.left
              leftMargin: cow*4
          }
      }
      WhiteWalls{
          id:whites9
          entityId: "whites9"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*12
              left: rectangle.left
              leftMargin: cow*6
          }
      }
      WhiteWalls{
          id:whites10
          entityId: "whites10"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*10
              left: rectangle.left
              leftMargin: cow*8
          }
      }
      WhiteWalls{
          id:whites11
          entityId: "whites11"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*8
              left: rectangle.left
              leftMargin: cow*10
          }
      }
      WhiteWalls{
          id:whites12
          entityId: "whites12"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*6
              left: rectangle.left
              leftMargin: cow*12
          }
      }
      WhiteWalls{
          id:whites13
          entityId: "whites13"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*12
              left: rectangle.left
              leftMargin: cow*8
          }
      }
      WhiteWalls{
          id:whites14
          entityId: "whites14"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*14
              left: rectangle.left
              leftMargin: cow*8
          }
      }
      WhiteWalls{
          id:whites15
          entityId: "whites15"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*8
              left: rectangle.left
              leftMargin: cow*10
          }
      }
      WhiteWalls{
          id:whites16
          entityId: "whites16"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*8
              left: rectangle.left
              leftMargin: cow*12
          }
      }
      WhiteWalls{
          id:whites17
          entityId: "whites8"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*10
              left: rectangle.left
              leftMargin: cow*12
          }
      }
      WhiteWalls{
          id:whites18
          entityId: "whites18"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*10
              left: rectangle.left
              leftMargin: cow*10
          }
      }
      WhiteWalls{
          id:whites19
          entityId: "whites19"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*14
              left: rectangle.left
              leftMargin: cow*12
          }
      }
      WhiteWalls{
          id:whites20
          entityId: "whites20"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*16
              left: rectangle.left
              leftMargin: cow*12
          }
      }
      WhiteWalls{
          id:whites21
          entityId: "whites21"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*18
              left: rectangle.left
              leftMargin: cow*12
          }
      }
      WhiteWalls{
          id:whites22
          entityId: "whites22"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*14
              left: rectangle.left
              leftMargin: cow*14
          }
      }
      WhiteWalls{
          id:whites23
          entityId: "whites23"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*16
              left: rectangle.left
              leftMargin: cow*14
          }
      }
      WhiteWalls{
          id:whites24
          entityId: "whites24"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*10
              left: rectangle.left
              leftMargin: cow*16
          }
      }
      WhiteWalls{
          id:whites25
          entityId: "whites25"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*12
              left: rectangle.left
              leftMargin: cow*16
          }
      }
      WhiteWalls{
          id:whites26
          entityId: "whites26"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*14
              left: rectangle.left
              leftMargin: cow*16
          }
      }
      WhiteWalls{
          id:whites27
          entityId: "whites27"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*12
              left: rectangle.left
              leftMargin: cow*18
          }
      }
      WhiteWalls{
          id:whites28
          entityId: "whites28"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*4
              left: rectangle.left
              leftMargin: cow*18
          }
      }
      WhiteWalls{
          id:whites29
          entityId: "whites29"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*2
              left: rectangle.left
              leftMargin: cow*20
          }
      }
      WhiteWalls{
          id:whites30
          entityId: "whites30"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*4
              left: rectangle.left
              leftMargin: cow*22
          }
      }
      WhiteWalls{
          id:whites31
          entityId: "whites31"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*6
              left: rectangle.left
              leftMargin: cow*22
          }
      }
      WhiteWalls{
          id:whites32
          entityId: "whites32"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*8
              left: rectangle.left
              leftMargin: cow*22
          }
      }
      WhiteWalls{
          id:whites33
          entityId: "whites33"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*20
              left: rectangle.left
              leftMargin: cow*18
          }
      }
      WhiteWalls{
          id:whites34
          entityId: "whites34"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*22
              left: rectangle.left
              leftMargin: cow*18
          }
      }
      WhiteWalls{
          id:whites35
          entityId: "whites35"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*20
              left: rectangle.left
              leftMargin: cow*20
          }
      }
      WhiteWalls{
          id:whites36
          entityId: "whites36"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*18
              left: rectangle.left
              leftMargin: cow*22
          }
      }
      WhiteWalls{
          id:whites37
          entityId: "whites37"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*20
              left: rectangle.left
              leftMargin: cow*22
          }
      }
      WhiteWalls{
          id:whites38
          entityId: "whites38"
          width: cow*2
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*24
              left: rectangle.left
              leftMargin: cow*24
          }
      }
      WhiteWall{
          id:white13
          entityId: "white13"
          width: cow
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*2
              left: rectangle.left
              leftMargin: cow*6
          }
      }
      WhiteWall{
          id:white14
          entityId: "white14"
          width: cow
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*2
              left: rectangle.left
              leftMargin: cow*7
          }
      }
      WhiteWall{
          id:white15
          entityId: "white15"
          width: cow
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*2
              left: rectangle.left
              leftMargin: cow*8
          }
      }
      WhiteWall{
          id:white16
          entityId: "white16"
          width: cow
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*2
              left: rectangle.left
              leftMargin: cow*10
          }
      }
      WhiteWall{
          id:white17
          entityId: "white17"
          width: cow
          height: width
          anchors{
              top: rectangle.top
              topMargin: 0
              left: rectangle.left
              leftMargin: cow*14
          }
      }
      WhiteWall{
          id:white18
          entityId: "white18"
          width: cow
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*0
              left: rectangle.left
              leftMargin: cow*15
          }
      }
      WhiteWall{
          id:white19
          entityId: "whites19"
          width: cow
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*0
              left: rectangle.left
              leftMargin: cow*16
          }
      }
      WhiteWall{
          id:white20
          entityId: "white20"
          width: cow
          height: width
          anchors{
              top: rectangle.top
              topMargin: cow*0
              left: rectangle.left
              leftMargin: cow*17
          }
      }
      Grass{
          id:grass1
          height: cow*2
          width: height
          anchors{
             top: rectangle.top
             topMargin: cow*10
             left: rectangle.left
             leftMargin: cow*6
          }
      }
      Grass{
          id:grass2
          height: cow*2
          width: height
          anchors{
             top: rectangle.top
             topMargin: cow*8
             left: rectangle.left
             leftMargin: cow*8
          }
      }
      Grass{
          id:grass3
          height: cow*2
          width: height
          anchors{
             top: rectangle.top
             topMargin: cow*6
             left: rectangle.left
             leftMargin: cow*10
          }
      }
      Grass{
          id:grass4
          height: cow*2
          width: height
          anchors{
             top: rectangle.top
             topMargin: cow*4
             left: rectangle.left
             leftMargin: cow*12
          }
      }
      Grass{
          id:grass5
          height: cow*2
          width: height
          anchors{
             top: rectangle.top
             topMargin: cow*20
             left: rectangle.left
             leftMargin: cow*12
          }
      }
      Grass{
          id:grass6
          height: cow*2
          width: height
          anchors{
             top: rectangle.top
             topMargin: cow*18
             left: rectangle.left
             leftMargin: cow*14
          }
      }
      Grass{
          id:grass7
          height: cow*2
          width: height
          anchors{
             top: rectangle.top
             topMargin: cow*16
             left: rectangle.left
             leftMargin: cow*16
          }
      }
      Grass{
          id:grass8
          height: cow*2
          width: height
          anchors{
             top: rectangle.top
             topMargin: cow*14
             left: rectangle.left
             leftMargin: cow*18
          }
      }


}
