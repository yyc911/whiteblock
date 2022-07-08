import QtQuick
import Data 1.0

 Rectangle{
    id:rec1
    x:BlockData.pointx(80)
    y:0
    width: 80
    height: 120
    Keys.enabled: true          //启用按键处理
    focus: true
    color:"black"
    Image{
        id:skin
        width: 79.5
        height: 120
        anchors.horizontalCenter: parent.horizontalCenter
        source: BlockData.skinname
    }
    gradient: Gradient {            //设置方块初始渐变色
               GradientStop {
                   position: 0.0
                   color: "#87CEFA"
               }
               GradientStop {
                   position: 1.0
                   color: "#000080"
               }
           }
    PropertyAnimation on y{         //使方块实现下落效果
        id:anim
        running:timer.running===true
        easing.type: Easing.Linear
        to:600
        duration:BlockData.speed
        loops:Animation.Infinite
    }

    function speedchange(){         //每累计点击10个方块，速度增加（无尽模式）
        if(BlockData.brach%10==0&&BlockData.brach!==0){BlockData.speed=6000-30*BlockData.brach}
        if(BlockData.brach>=60&&BlockData.brach%10==0){BlockData.speed=6000-40*BlockData.brach}


    }
    function speedchange1(){        //每累计4点击个方块，速度增加（竞速模式）
        if(BlockData.brach%4==0&&BlockData.brach!==0){BlockData.speed=6000-70*BlockData.brach}
    }
    Timer{
        running: true
        interval: BlockData.speed/6     //时间间隔
        repeat: true
        onTriggered: {
            BlockData.xpoint=rec1.x
        }
    }

    onXChanged: {
        BlockData.xpoint=rec1.x
    }

    onYChanged: {
       BlockData.ypoint=rec1.y
         if(myLoader.sourceComponent == gamepage||myLoader.sourceComponent == gamepage1){
        if(rec1.y>=595){                //超过长度消失，失败判定
            rec1.destroy()
            myLoader.sourceComponent = failpage
            BlockData.speed=6000
            BlockData.maxnum=BlockData.num
           }
         }else {
             if(rec1.y>=595){
                 rec1.destroy()
                 BlockData.num++
             }
             if(rec1.x===BlockData.xpoints&&rec1.y+120>480){myLoader.sourceComponent = failpage}
         }
        if(BlockData.key_Q){rec1.destroy();BlockData.key_Q=false}
       else if(BlockData.key_W){rec1.destroy();BlockData.key_W=false}
       else if(BlockData.key_E){rec1.destroy();BlockData.key_E=false}
       else if(BlockData.key_R){rec1.destroy();BlockData.key_R=false}
       else if(BlockData.key_T){rec1.destroy();BlockData.key_T=false}
    }
    TapHandler{
        onTapped:{
            if(myLoader.sourceComponent == gamepage){
                if((rec1.y+180)>=BlockData.ypoint){
                    speedchange()
                    BlockData.num++
                    rec1.destroy()
                }
            }else if(myLoader.sourceComponent == gamepage1){
                speedchange1()
                BlockData.num++
                rec1.destroy()
            }
        }
    }
}
