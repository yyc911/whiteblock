import QtQuick
import QtQuick.Controls
import Data 1.0

Window {
    width: 600
    height: 600
    maximumHeight: 600
    maximumWidth: 600
    visible: true
    title: qsTr("别踩白块")
    Loader{
            id:myLoader
            sourceComponent : mainpage
        }
        Component.onCompleted: myLoader.sourceComponent = mainpage
        Component{
               id:mainpage
               Mainpage{
            anchors.centerIn: parent
               }
           }
        Component{
               id:gamepage
               Gamepage{
            anchors.centerIn: parent
               }
           }
        Component{
               id:gamepage1
               Gamepage1{
            anchors.centerIn: parent
               }
           }
        Component{
               id:gamepage2
               Gamepage2{
            anchors.centerIn: parent
               }
           }
        Component{
               id:failpage
               Failpage{
                  anchors.centerIn: parent
               }
           }
        Component{
               id:helppage
               Helppage{
                  anchors.centerIn: parent
               }
           }

}
