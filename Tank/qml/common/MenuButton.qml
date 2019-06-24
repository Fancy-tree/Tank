import QtQuick 2.0

 Rectangle {
   id: button

   width: buttonText.width+ paddingHorizontal*2
   height: buttonText.height+ paddingVertical*2

   color: "#e9e9e9"

   radius: 100

   property int paddingHorizontal: 10
   property int paddingVertical: 5
   property alias label: label
   property bool active: false
   property alias text: buttonText.text

   // this handler is called when the button is clicked.
   signal clicked
   Image {
     id: label
     anchors.fill: parent
   }
   Text {
     id: buttonText
     anchors.centerIn: parent
     font.family: gameFont.name
     font.pixelSize: 18
     color: "black"
   }

   MouseArea {
     id: mouseArea
     anchors.fill: parent
     hoverEnabled: true
     onClicked: button.clicked()
     onPressed: button.opacity = 0.5
     onReleased: button.opacity = 1
   }
 }
