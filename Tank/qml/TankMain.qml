import Felgo 3.0
import QtQuick 2.0
import "./scenes"

GameWindow {
  id: gameWindow
  screenHeight: 640
  screenWidth: 960

  state: "menu"

  // create and remove entities at runtime
  EntityManager {
    id: entityManager
    entityContainer: gameScene
  }

  property int gameOver :0
  property int numPlayerDead :0
  property int player1Dead :0

  MenuScene {
    id: menuScene
    // listen to the button signals of the scene and change the state according to it
    onStartGamePressed: gameWindow.state = "selectPlayer"
    onSettingsPressed: gameWindow.state = "settings"
  }
  SelectPlayerScene {
    id: selectPlayerScene

    onPlayerPressed: {
       gameScene.setPlayer(numPlayers)
       gameWindow.state = "selectLevel"

    }
    onBackPressed: gameWindow.state = "menu"
  }
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
    onBackPressed: gameWindow.state = "selectPlayer"
  }
  // game scene to play a level
  GameScene {
    id: gameScene

    onBackPressed: gameWindow.state = "selectLevel"
  }


  states: [
       State {
         name: "menu"
         PropertyChanges {target: menuScene; opacity: 1}
         PropertyChanges {target: gameWindow; activeScene: menuScene}
       },
       State {
         name: "selectPlayer"
         PropertyChanges {target: selectPlayerScene; opacity: 1}
         PropertyChanges {target: gameWindow; activeScene: selectPlayerScene}
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
