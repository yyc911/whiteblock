#include "testwidget.h"
#include "ui_testwidget.h"
#include <QPainter>
#include <QTime>
#include <QDebug>

TestWidget::TestWidget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::TestWidget)
{
    ui->setupUi(this);
    connect(&timer,&QTimer::timeout,this,&TestWidget::updateData);
    timer.setInterval(10);
    isfailure = false;
    clicktrue=true;
    step = 1;
    sum=0;
    QTime time = QTime::currentTime();
    srand(QTime(0,0,0).secsTo(time));

    QTimer::singleShot(10,this,[=](){
        setDSize(width()/5,height()/5);
    });
}

TestWidget::~TestWidget()
{
    delete ui;
}

void TestWidget::setDSize(int width, int height)
{
    Dwidth = width;
    Dheight = height;
}

void TestWidget::start()
{
    timer.start();
}

void TestWidget::restart()
{
    timer.stop();
    bData.clear();
    isfailure = false;
    clicktrue=true;
    step = 1;
    sum = 0;
    emit value(sum);
    timer.start();
}

void TestWidget::paintEvent(QPaintEvent *event)
{
    QPainter painter(this);
    QPen pen;
    pen.setColor("black");
    painter.setPen(pen);
    painter.fillRect(rect(),Qt::white);

    painter.setBrush(Qt::black);

    if(isfailure) {
        int w = 200;
        int h = 30;
        QFont f;f.setPixelSize(32);
        painter.setFont(f);
        painter.drawText((width()-w)/2,(height()-h)/2,w,h,Qt::AlignCenter,"你已失败");
    }else {
        BData* d = bData.get();
        for(int i=80;i<=400;i+=80)
            painter.drawLine(i,0,i,600);

        while(d){
            painter.drawRect(d->x,d->y,d->width,d->height);
            d = d->next;
        }
    }
}

void TestWidget::mousePressEvent(QMouseEvent *event)
{
    QPoint point = event->pos();
    if(bData.remove(point.x(),point.y())) {
        sum++;
        clicktrue=true;
        emit value(sum);
        //刷新速度
        if(sum%10 == 0)
            step++;
    }else if(point.y()<=bData.get()->y+bData.get()->height){
        clicktrue=false;
    }
}

void TestWidget::keyReleaseEvent(QKeyEvent *event){

    if(event->isAutoRepeat())
        return;

    bool _sum = false;
    switch(event->key())
    {
        case Qt::Key_Q:     _sum = bData.remove(Dwidth-1);break;
        case Qt::Key_W:     _sum = bData.remove(2*(Dwidth-1));break;
        case Qt::Key_E:     _sum = bData.remove(3*(Dwidth-1));break;
        case Qt::Key_R:     _sum = bData.remove(4*(Dwidth-1));break;
        case Qt::Key_T:     _sum = bData.remove(5*(Dwidth-1));break;
        default:break;
    }
    if(_sum) {
        sum++;
        clicktrue=true;
        emit value(sum);
        //刷新速度
        if(sum%10 == 0)
            step++;
    }else{
        clicktrue=false;
    }
}

void TestWidget::updateData()
{
    static int _step = Dheight;
    // 插入新值
    if(_step >= Dheight) {

        BData *d = new BData;
        int x = rand() % 5;
        bData.init(&d,x*Dwidth,-Dheight,Dwidth,Dheight);
        bData.insert(d);
        _step = 0;

    }

    // 更新数据
    bData.updata(step);
    //判断失败条件
    if(!clicktrue){
        isfailure=true;
        emit failure();
        timer.stop();
    }
    if(!bData.judge(height())) {
        isfailure = true;
        emit failure();
        timer.stop();
    }
    _step+=step;
    //刷新界面
    update();
}
