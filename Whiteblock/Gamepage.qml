//无尽模式
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
       Keys.onPressed:(event)=>{                //按键事件判定并计分(Q、W、E、R、T)
           switch(event.key){
               case Qt.Key_Q:if(BlockData.xpoint===0){
                                  speedchange()
                                  BlockData.num++
                                  BlockData.key_Q=true
                                  timer.start()

                              }else{
                                  myLoader.sourceComponent = failpage
                                  BlockData.speed=6000
                                  BlockData.maxnum=BlockData.num
                              }
                              break
               case Qt.Key_W:if(BlockData.xpoint===80){
                                  speedchange()
                                  BlockData.num++
                                  BlockData.key_W=true
                                  timer.start()
                              }else{
                                  myLoader.sourceComponent = failpage
                                  BlockData.speed=6000
                                  BlockData.maxnum=BlockData.num
                              }
                              break
               case Qt.Key_E:if(BlockData.xpoint===160){
                                  speedchange()
                                  BlockData.num++
                                  BlockData.key_E=true
                                  timer.start()
                              }else{
                                  myLoader.sourceComponent = failpage
                                  BlockData.speed=6000
                                  BlockData.maxnum=BlockData.num
                              }
                              break
               case Qt.Key_R:if(BlockData.xpoint===240){
                                  speedchange()
                                  BlockData.num++
                                  BlockData.key_R=true
                                  timer.start()
                              }else{
                                  myLoader.sourceComponent = failpage
                                  BlockData.speed=6000
                                  BlockData.maxnum=BlockData.num
                              }
                              break
               case Qt.Key_T:if(BlockData.xpoint===320){
                                  speedchange()
                                  BlockData.num++
                                  BlockData.key_T=true
                                  timer.start()
                              }else{
                                  myLoader.sourceComponent = failpage
                                  BlockData.speed=6000
                                  BlockData.maxnum=BlockData.num
                              }
                              break


           }

       }
       function speedchange(){
           if(BlockData.num%10==0&&BlockData.num!==0)BlockData.speed=6000-30*BlockData.num
           if(BlockData.num>=60&&BlockData.num%10==0)BlockData.speed=6000-40*BlockData.num
       }
   MouseArea{
       width: 400
       height: 600
      onClicked:{
          if(BlockData.ypoint>=mouseY){
              myLoader.sourceComponent = failpage
              BlockData.speed=6000
              BlockData.ypoint=0
              BlockData.maxnum=BlockData.num
          }
      }
   }

//每个方块道的分界线设置
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

           }
           Column{
               spacing: 20
               Button{
                   id:button1
                   text: "重新开始"
                   onClicked: {myLoader.sourceComponent = failpage;myLoader.sourceComponent = gamepage;BlockData.num=0}
               }
               Button{
                   id:button2
                   text: "暂停"
                   onClicked: {timer.running?timer.stop():timer.start()
                         if(ifplay===true){
                             playMusic.pause()
                             ifplay=false
                         }else{
                             playMusic.play()
                             ifplay=true
                         }
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
    MediaPlayer {
            id: playMusic
              audioOutput: AudioOutput{}
            source: BlockData.musicname

        }
    Themedialog{
        id:themedialog
        visible: false
    }

        Block       //起始方块设置
        {
        id:block
        visible:true
        Text {
            anchors.centerIn: parent
            text: qsTr("start")
            font.pointSize: 20
            color: "red"
        }
        TapHandler{
            onTapped: {
                playMusic.play()
                timer.start()
                ifplay=true
                block.destroy()
            }
        }
     }
}

