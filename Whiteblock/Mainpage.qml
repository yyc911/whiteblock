//Mainpage.qml  游戏主界面
import QtQuick
import QtQuick.Controls
import QtQml
import QtMultimedia
Item {
    Column{
    spacing: 20
    Text {
        id: name
        text: qsTr("别 踩 白 块")
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 36
        font.bold: true
        padding: 50
    }
    Button{
        id:button1
        width: 600
        height: 60
        text: "无尽模式"
        onClicked: myLoader.sourceComponent = gamepage
        font.pixelSize: 28

    }
    Button{
        id:button2
        text: "竞速模式"
        font.pixelSize: 28
        width:600
        height:60
        onClicked: myLoader.sourceComponent = gamepage1
    }
    Button{
        id:button3
        text: "闪避模式"
        font.pixelSize: 28
        width:600
        height:60
        onClicked: myLoader.sourceComponent = gamepage2
    }
    Button{
        id:button4
        text: "帮助"
        font.pixelSize: 28
        width:600
        height:60
        onClicked: myLoader.sourceComponent = helppage
    }
    Button{
        id:button5
        text: "退出游戏"
        onClicked: close()
        font.pixelSize: 28
        width: 600
        height: 60
    }
  }

}

