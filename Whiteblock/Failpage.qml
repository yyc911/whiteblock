import QtQuick
import QtQuick.Controls
import Data 1.0
Item {
   Rectangle{
       width: 600
       height: 600
       visible: true
       focus: true
       Keys.enabled: true
       Text {
           id: fail
           font.pointSize: 30
           anchors.centerIn: parent
           text: qsTr("你失败了！\n"+"你最终得分为："+BlockData.num+"分\n点击窗口任意位置\n或按下任意键继续......")
       }
       MouseArea{
           anchors.fill: parent
           onClicked:{myLoader.sourceComponent = mainpage;BlockData.num=0;BlockData.brach=0}
       }
       Keys.onPressed: {
           myLoader.sourceComponent = mainpage
           BlockData.num=0
           BlockData.brach=0
       }
   }
}
