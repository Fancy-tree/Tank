import Felgo 3.0
import QtQuick 2.0
import "./scenes"
import com.mycompany 1.0
GameWindow {
  id: gameWindow
  screenHeight: 640
  screenWidth: 960

  state: "menu"


  FontLoader{
      id:gameFont
      source: "../assets/Sour Crunch.ttf"
  }
  property alias data3: data3
  // create and remove entities at runtime
  EntityManager {
    id: entityManager
    entityContainer: gameScene
  }

  Data{
      id:data3
  }

  Timer{
      id:loaddata
      interval: 10;running: true
      onTriggered: data3.loadData()
  }

  property int gameOver :0
  property int numPlayerDead :0
  property int youWin :0
  property int rec: data3.level1highscore
  MenuScene {
    id: menuScene
    // listen to the button signals of the scene and change the state according to it
    onStartGamePressed: gameWindow.state = "selectLevel"
    onCreditsPressed: gameWindow.state = "credits"
    onSettingsPressed: gameWindow.state = "settings"
  }
  Credits{
      id:creditsScene
      //record1.text:data3.read1()
      onBackPressed: gameWindow.state = "menu"
  }
//  Timer{
//      interval: 10;running: true
//      onTriggered:{
//          creditsScene.record1.text=data3.level1highscore
//          creditsScene.record2.text=data3.level2highscore
//          creditsScene.record3.text=data3.level3highscore
//          creditsScene.record4.text=data3.level4highscore
//      }
//  }

  SettingScene{
    id:settingScene

    onBackPressed: gameWindow.state = "menu"
  }
  // scene for selecting levels
  SelectLevelScene {
    id: selectLevelScene

    onLevelPressed: {
         // selectedLevel is the parameter of the levelPressed signal
       gameScene.setLevel(selectedLevel)
       gameWindow.state = "game"

    }
    onBackPressed: gameWindow.state = "menu"
  }
  // game scene to play a level
  GameScene {
    id: gameScene
    onOpenlevel: {
        if(level==2){
            selectLevelScene.level2=true
        }else if(level==3){
            selectLevelScene.level3=true
        }else if(level==4){
            selectLevelScene.level4=true
        }
    }

    onBackPressed: gameWindow.state = "selectLevel"
  }


  states: [
       State {
         name: "menu"
         PropertyChanges {target: menuScene; opacity: 1}
         PropertyChanges {target: gameWindow; activeScene: menuScene}
       },
       State {
         name: "credits"
         PropertyChanges {target: creditsScene; opacity: 1}
         PropertyChanges {target: gameWindow; activeScene: creditsScene}
       },
       State {
         name: "settings"
         PropertyChanges {target: settingScene; opacity: 1}
         PropertyChanges {target: gameWindow; activeScene: settingScene}
       },
       State {
         name: "selectLevel"
         PropertyChanges {target: selectLevelScene; opacity: 1}
         PropertyChanges {target: gameWindow; activeScene: selectLevelScene}
       },
       State {
         name: "game"
         PropertyChanges {target: gameScene; opacity: 1}
         PropertyChanges {target: gameWindow; activeScene: gameScene}
       }
     ]
}
