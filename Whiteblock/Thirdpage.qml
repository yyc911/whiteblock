//Thirdpage.qml   背景音乐选择更换页
import QtQuick
import QtQuick.Controls
import Data 1.0
Page {
    Rectangle{
        width: 150
        height: 240
        x:20
        TapHandler{
            onTapped: {BlockData.musicname="qrc:/music/m01.mp3"}
        }
        Image {
            id: music1
            height: 220
            width: 130
            anchors.centerIn: parent
            source: "qrc:/images/m01.jpg"
        }
    }
    Text{
        x:45
        y:240
        text: qsTr("1.青石巷")
        font.pixelSize:25
    }
    Rectangle{
        width: 150
        height: 240
        x:170
        TapHandler{
            onTapped: {BlockData.musicname="qrc:/music/m02.mp3"}
        }
        Image {
            id: music2
            height: 220
            width: 130
            anchors.centerIn: parent
            source: "qrc:/images/m02.jpg"
        }
    }
    Text{
        x:210
        y:240
        text: qsTr("2.卡农")
        font.pixelSize:25
    }
    Rectangle{
        width: 150
        height: 240
        x:320
        TapHandler{
            onTapped: {BlockData.musicname="qrc:/music/m03.mp3"}
        }
        Image {
            id: music3
            height: 220
            width: 130
            anchors.centerIn: parent
            source: "qrc:/images/m03.jpg"
        }
    }
    Text{
        x:335
        y:240
        text: qsTr("3.克罗地亚")
        font.pixelSize:25
    }
    Rectangle{
        width: 150
        height: 240
        x:470
        TapHandler{
            onTapped: {BlockData.musicname="qrc:/music/m04.mp3"}
        }
        Image {
            id: music4
            height: 220
            width: 130
            anchors.centerIn: parent
            source: "qrc:/images/m04.jpg"
        }
    }
    Text{
        x:485
        y:240
        text: qsTr("4.雨的印记")
        font.pixelSize:25
    }
    Button{
       width: 120
       height: 50
       x:250
       y:320
       text: "确定选择"
       onClicked: {
           window.visible=false
       }
    }
}
