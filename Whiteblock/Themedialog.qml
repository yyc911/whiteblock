//Themedialog.qml   主题更换界面的类型选择
import QtQuick
import QtQuick.Controls

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Stack窗口结构")
    header: ToolBar {
        contentHeight: toolButton.implicitHeight
        //调出抽屉窗口的按钮
        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }
        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }
    //抽屉式的窗口结构
    Drawer {
        id: drawer
        width: window.width * 0.5
        height: window.height

        Column {
            anchors.fill: parent
            ItemDelegate {
                text: qsTr("皮肤")
                width: parent.width
                onClicked: {
                    stackView.push(firstPage)
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("背景")
                width: parent.width
                onClicked: {
                    stackView.push(secondPage)
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("音乐")
                width: parent.width
                onClicked: {
                    stackView.push(thirdPage)
                    drawer.close()
                }
            }
        }
    }

    //堆叠窗口结构
    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: firstPage
        function switchFirstPage()
        {
            stackView.push(firstPage)
        }
    }
    //每一个子窗口
    Component{
        id: firstPage
        Firstpage{}
    }
    Component {
        id: secondPage
        Secondpage{}
    }
    Component{
        id:thirdPage
        Thirdpage{}
    }
}
