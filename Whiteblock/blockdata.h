#ifndef BLOCKDATA_H
#define BLOCKDATA_H

#include <QMouseEvent>
#include <stdio.h>
#include<QtQml>
class BlockData :public QObject
{
    Q_OBJECT
    QML_ELEMENT

public:
    BlockData();
    ~BlockData();
    static BlockData *getInstance();

    Q_INVOKABLE int pointx(int x);  //Q_INVOKABLE标记，实现方块随机掉落

    int getSpeed() const;           //获取当前方块移动速度
    void setSpeed(int newSpeed);

    int getNum() const;             //获取已点击方块数
    void setNum(int newNum);

    int getYpoint() const;          //获取y坐标
    void setYpoint(int newYpoint);

    int getXpoint() const;          //获取x坐标
    void setXpoint(int newXpoint);


    bool getKey_Q() const;
    void setKey_Q(bool newKey_Q);

    bool getKey_W() const;
    void setKey_W(bool newKey_W);

    bool getKey_E() const;
    void setKey_E(bool newKey_E);

    bool getKey_R() const;
    void setKey_R(bool newKey_R);

    bool getKey_T() const;
    void setKey_T(bool newKey_T);

    int getMaxnum() const;          //获取游戏得分最高数
    void setMaxnum(int newMaxnum);

    int getBrach() const;
    void setBrach(int newBrach);

    const QString &getSkinname() const;
    void setSkinname(const QString &newSkinname);

    const QString &getBackgroundname() const;
    void setBackgroundname(const QString &newBackgroundname);

    const QString &getThemename() const;
    void setThemename(const QString &newThemename);

    const QString &getMusicname() const;
    void setMusicname(const QString &newMusicname);

    int getXpoints() const;
    void setXpoints(int newXpoints);

signals:
    void speedChanged();

    void numChanged();

    void ypointChanged();

    void xpointChanged();


    void key_QChanged();

    void key_WChanged();

    void key_EChanged();

    void key_RChanged();

    void key_TChanged();

    void maxChanged();

    void maxnumChanged();

    void brachChanged();

    void skinnameChanged();

    void backgroundnameChanged();

    void themenameChanged();

    void musicnameChanged();

    void xpointsChanged();

private:
    int speed=6000;
    int num=0;
    int ypoint=0;
    int xpoint=0;
    int maxnum=128;
    int brach=0;
    int xpoints=0;
    QString skinname;
    QString backgroundname;
    QString themename;
    QString musicname="qrc:/music/m01.mp3";
    bool key_Q=false;
    bool key_W=false;
    bool key_E=false;
    bool key_R=false;
    bool key_T=false;

    //Q_PROPERTY()用作属性封装注册
    Q_PROPERTY(int speed READ getSpeed WRITE setSpeed NOTIFY speedChanged)
    Q_PROPERTY(int num READ getNum WRITE setNum NOTIFY numChanged)
    Q_PROPERTY(int ypoint READ getYpoint WRITE setYpoint NOTIFY ypointChanged)
    Q_PROPERTY(int xpoint READ getXpoint WRITE setXpoint NOTIFY xpointChanged)
    Q_PROPERTY(bool key_Q READ getKey_Q WRITE setKey_Q NOTIFY key_QChanged)
    Q_PROPERTY(bool key_W READ getKey_W WRITE setKey_W NOTIFY key_WChanged)
    Q_PROPERTY(bool key_E READ getKey_E WRITE setKey_E NOTIFY key_EChanged)
    Q_PROPERTY(bool key_R READ getKey_R WRITE setKey_R NOTIFY key_RChanged)
    Q_PROPERTY(bool key_T READ getKey_T WRITE setKey_T NOTIFY key_TChanged)
    Q_PROPERTY(int maxnum READ getMaxnum WRITE setMaxnum NOTIFY maxnumChanged)
    Q_PROPERTY(int brach READ getBrach WRITE setBrach NOTIFY brachChanged)
    Q_PROPERTY(QString skinname READ getSkinname WRITE setSkinname NOTIFY skinnameChanged)
    Q_PROPERTY(QString backgroundname READ getBackgroundname WRITE setBackgroundname NOTIFY backgroundnameChanged)
    Q_PROPERTY(QString themename READ getThemename WRITE setThemename NOTIFY themenameChanged)
    Q_PROPERTY(QString musicname READ getMusicname WRITE setMusicname NOTIFY musicnameChanged)
    Q_PROPERTY(int xpoints READ getXpoints WRITE setXpoints NOTIFY xpointsChanged)
};

#endif // BLOCKDATA_H
