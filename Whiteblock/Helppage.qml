import QtQuick

Item {
    Rectangle{
        width: 600
        height: 600
        visible: true
        focus: true
        Keys.enabled: true
        Text {
            id: help
            font.pointSize: 18
            color: "blue"
            text: qsTr("                                       游戏规则        \n无尽模式：\n          通过键盘或鼠标点击下落的方块即可消除方块，\n   得分加一，得分每增加十，方块下落速度增加,未\n   正确点击方块或让方块完全下落则游戏结束。\n\n竞速模式：\n          通过键盘或鼠标点击下落的方块即可消除方块，\n   得分加一，得分每增加四，方块下落速度增加，未\n   正确点击方块或让方块完全下落或倒计时结束则游\n   戏结束。\n\n闪避模式：\n          通过键盘（← →）或鼠标让最下方块左右移动\n   躲避下落方块，成功躲避得分加一，否则游戏结束。\n\n  (可用按键Q、W、E、R、T依次对应，鼠标为左键点击)\n 按任意键或鼠标点击窗口任意位置回到主页面.......")
        }
        MouseArea{
            anchors.fill: parent
            onClicked:myLoader.sourceComponent = mainpage
        }
        Keys.onPressed:
            myLoader.sourceComponent = mainpage

    }
}
