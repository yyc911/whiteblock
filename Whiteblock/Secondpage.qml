//Secondpage.qml   主题选择更换背景页
import QtQuick
import QtQuick.Controls
import Data 1.0

Page {
    Rectangle{
        width: 90
        height: 130
        x:25
        TapHandler{
            onTapped: {BlockData.backgroundname="qrc:/images/B01.jpg"}
        }
        Image {
            id: skin1
            height: 120
            width: 80
            anchors.centerIn: parent
            source: "qrc:/images/B01.jpg"
        }
    }
    Rectangle{
        width: 90
        height: 130
        x:125
        TapHandler{
            onTapped: {BlockData.backgroundname="qrc:/images/B02.jpg"}
        }
        Image {
            id: skin2
            height: 120
            width: 80
            anchors.centerIn: parent
            source: "qrc:/images/B02.jpg"
        }
    }
    Rectangle{
        width: 90
        height: 130
        x:225
        TapHandler{
            onTapped: {BlockData.backgroundname="qrc:/images/B03.jpg"}
        }
        Image {
            id: skin3
            height: 120
            width: 80
            anchors.centerIn: parent
            source: "qrc:/images/B03.jpg"
        }
    }
    Rectangle{
        width: 90
        height: 130
        x:325
        TapHandler{
            onTapped: {BlockData.backgroundname="qrc:/images/B04.jpg"}
        }
        Image {
            id: skin4
            height: 120
            width: 80
            anchors.centerIn: parent
            source: "qrc:/images/B04.jpg"
        }
    }
    Rectangle{
        width: 90
        height: 130
        x:425
        TapHandler{
            onTapped: {BlockData.backgroundname="qrc:/images/B05.jpg"}
        }
        Image {
            id: skin5
            height: 120
            width: 80
            anchors.centerIn: parent
            source: "qrc:/images/B05.jpg"
        }
    }
    Rectangle{
        width: 90
        height: 130
        x:525
        TapHandler{
            onTapped: {BlockData.backgroundname="qrc:/images/B06.jpg"}
        }
        Image {
            id: skin6
            height: 120
            width: 80
            anchors.centerIn: parent
            source: "qrc:/images/B06.jpg"
        }
    }
    Rectangle{
        width: 90
        height: 130
        x:25
        y:140
        TapHandler{
            onTapped: {BlockData.backgroundname="qrc:/images/B07.jpg"}
        }
        Image {
            id: skin7
            height: 120
            width: 80
            anchors.centerIn: parent
            source: "qrc:/images/B07.jpg"
        }
    }
    Rectangle{
        width: 90
        height: 130
        x:125
        y:140
        TapHandler{
            onTapped: {BlockData.backgroundname="qrc:/images/B08.jpg"}
        }
        Image {
            id: skin8
            height: 120
            width: 80
            anchors.centerIn: parent
            source: "qrc:/images/B08.jpg"
        }
    }
    Rectangle{
        width: 90
        height: 130
        x:225
        y:140
        TapHandler{
            onTapped: {BlockData.backgroundname="qrc:/images/B09.jpg"}
        }
        Image {
            id: skin9
            height: 120
            width: 80
            anchors.centerIn: parent
            source: "qrc:/images/B09.jpg"
        }
    }
    Rectangle{
        width: 90
        height: 130
        x:325
        y:140
        TapHandler{
            onTapped: {BlockData.backgroundname="qrc:/images/B10.jpg"}
        }
        Image {
            id: skin10
            height: 120
            width: 80
            anchors.centerIn: parent
            source: "qrc:/images/B10.jpg"
        }
    }
    Rectangle{
        width: 90
        height: 130
        x:425
        y:140
        TapHandler{
            onTapped: {BlockData.backgroundname="qrc:/images/B11.jpg"}
        }
        Image {
            id: skin11
            height: 120
            width: 80
            anchors.centerIn: parent
            source: "qrc:/images/B11.jpg"
        }
    }
    Rectangle{
        width: 90
        height: 130
        x:525
        y:140
        TapHandler{
            onTapped: {BlockData.backgroundname="qrc:/images/B12.jpg"}
        }
        Image {
            id: skin12
            height: 120
            width: 80
            anchors.centerIn: parent
            source: "qrc:/images/B12.jpg"
        }
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
