//闪避模式
import QtQuick
import QtQuick.Controls
import Data 1.0
import QtQuick.Shapes
import QtMultimedia
Item {
    property bool ifdialog: true
    property bool ifplay: false
    property Component com: Qt.createComponent("Block.qml")
    focus: true
   Keys.enabled: true
       Keys.onPressed:(event)=>{        //按键处理（← →）
           switch(event.key){
               case Qt.Key_Left:if(rec.x>=80)rec.x=rec.x-80
                              break
               case Qt.Key_Right:if(rec.x<320)rec.x=rec.x+80
                              break
           }
       }
   MouseArea{
       width: 400
       height: 600
      onClicked:{
          if(rec.x>=mouseX&&rec.x>=80)rec.x=rec.x-80
          else if(rec.x<mouseX&&rec.x<320)rec.x=rec.x+80
      }
   }

       Row{
        spacing: 20
           Rectangle{
               id:wodex
               width: 400
               height: 600
               border.color: "black"
               Image{
                   id:background
                   width: 400
                   height: 600
                   anchors.horizontalCenter: parent.horizontalCenter
                   source: BlockData.backgroundname
               }
               Shape {
                   ShapePath {
                       strokeWidth: 1
                       strokeColor: "black"
                       startX: 80; startY: 0
                       PathLine {
                       x: 80
                       y: 600
                       }
                       }
                       ShapePath {
                       strokeWidth: 1
                       strokeColor: "black"
                       startX: 160; startY: 0
                       PathLine {
                       x: 160
                       y: 600
                       }
                       }
                       ShapePath {
                       strokeWidth: 1
                       strokeColor: "black"
                       startX: 240; startY: 0
                       PathLine {
                       x: 240
                       y: 600
                       }
                       }
                       ShapePath {
                       strokeWidth: 1
                       strokeColor: "black"
                       startX: 320; startY: 0
                       PathLine {
                       x: 320
                       y: 600
                       }
                       }
               }
               Rectangle{
                   id:rec
                   width: 80
                   height: 100
                   x:BlockData.pointx(80)
                   color: "black"
                   border.color: "black"
                   anchors.bottom: parent.bottom
                   Timer{
                      id:timer2
                      running: true
                      interval:BlockData.speed/5
                      repeat: true
                      onTriggered: BlockData.xpoints=rec.x
                  }
               }
           }
           Column{
               spacing: 20
               Button{
                   id:button1
                   text: "开始"
                   onClicked:{
               playMusic.play();timer.start();
                   }
               }
               Button{
                   id:button3
                   text: "返回主页面"
                   onClicked: myLoader.sourceComponent = mainpage
               }
               Button{
                   id:button4
                   text: "更换主题"
                   onClicked: themedialog.visible=ifdialog
               }
               Label{
                   id:text
                   text: "你的得分: "+BlockData.num+"\n最高分:"+BlockData.maxnum
               }
           }
    }
       Themedialog{
           id:themedialog
           visible: false
       }
       MediaPlayer {
               id: playMusic
                 audioOutput: AudioOutput{}
               source: BlockData.musicname

           }

    Timer{
       id:timer
       interval: BlockData.speed/6
       repeat: true
       onTriggered: {
           if(com.status===Component.Ready){
               com.createObject(parent,{y:-120})
               BlockData.brach++
       }

     }

   }
}

