#include "blockdata.h"
#include <QQuickItem>
BlockData::BlockData()
{

}

BlockData::~BlockData()
{

}

BlockData *BlockData::getInstance()
{
    static BlockData *test=new BlockData;
    return test;
}

int BlockData::pointx(int x)
{
    int m=(rand() % 5)*x;
    return m;
}

int BlockData::getSpeed() const             //方块移动速度获取和设置
{
    return speed;
}

void BlockData::setSpeed(int newSpeed)
{
    if (speed == newSpeed)
        return;
    speed = newSpeed;
    emit speedChanged();
}

int BlockData::getNum() const
{
    return num;
}

void BlockData::setNum(int newNum)
{
    if (num == newNum)
        return;
    num = newNum;
    emit numChanged();
}

int BlockData::getYpoint() const
{
    return ypoint;
}

void BlockData::setYpoint(int newYpoint)
{
    newYpoint+=120;
    if (ypoint >= newYpoint&&newYpoint!=120)
        return;
    ypoint = newYpoint;
    emit ypointChanged();
}

int BlockData::getXpoint() const
{
    return xpoint;
}

void BlockData::setXpoint(int newXpoint)
{
    if (xpoint == newXpoint)
        return;
    xpoint = newXpoint;
    emit xpointChanged();
}

bool BlockData::getKey_Q() const
{
    return key_Q;
}

void BlockData::setKey_Q(bool newKey_Q)
{
    if (key_Q == newKey_Q)
        return;
    key_Q = newKey_Q;
    emit key_QChanged();                    //发送按键信号
}

bool BlockData::getKey_W() const
{
    return key_W;
}

void BlockData::setKey_W(bool newKey_W)
{
    if (key_W == newKey_W)
        return;
    key_W = newKey_W;
    emit key_WChanged();
}

bool BlockData::getKey_E() const
{
    return key_E;
}

void BlockData::setKey_E(bool newKey_E)
{
    if (key_E == newKey_E)
        return;
    key_E = newKey_E;
    emit key_EChanged();
}

bool BlockData::getKey_R() const
{
    return key_R;
}

void BlockData::setKey_R(bool newKey_R)
{
    if (key_R == newKey_R)
        return;
    key_R = newKey_R;
    emit key_RChanged();
}

bool BlockData::getKey_T() const
{
    return key_T;
}

void BlockData::setKey_T(bool newKey_T)
{
    if (key_T == newKey_T)
        return;
    key_T = newKey_T;
    emit key_TChanged();
}

int BlockData::getMaxnum() const
{
    return maxnum;
}

void BlockData::setMaxnum(int newMaxnum)
{
    if (maxnum >= newMaxnum)
        return;
    maxnum = newMaxnum;
    emit maxnumChanged();
}

int BlockData::getBrach() const
{
    return brach;
}

void BlockData::setBrach(int newBrach)
{
    if (brach == newBrach)
        return;
    brach = newBrach;
    emit brachChanged();
}

const QString &BlockData::getSkinname() const
{
    return skinname;
}

void BlockData::setSkinname(const QString &newSkinname)
{
    if (skinname == newSkinname)
        return;
    skinname = newSkinname;
    emit skinnameChanged();
}

const QString &BlockData::getBackgroundname() const
{
    return backgroundname;
}

void BlockData::setBackgroundname(const QString &newBackgroundname)
{
    if (backgroundname == newBackgroundname)
        return;
    backgroundname = newBackgroundname;
    emit backgroundnameChanged();
}

const QString &BlockData::getThemename() const
{
    return themename;
}

void BlockData::setThemename(const QString &newThemename)
{
    if (themename == newThemename)
        return;
    themename = newThemename;
    emit themenameChanged();
}

const QString &BlockData::getMusicname() const
{
    return musicname;
}

void BlockData::setMusicname(const QString &newMusicname)
{
    if (musicname == newMusicname)
        return;
    musicname = newMusicname;
    emit musicnameChanged();
}

int BlockData::getXpoints() const
{
    return xpoints;
}

void BlockData::setXpoints(int newXpoints)
{
    if (xpoints == newXpoints)
        return;
    xpoints = newXpoints;
    emit xpointsChanged();
}


