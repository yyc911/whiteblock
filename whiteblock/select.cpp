#include "select.h"
#include "ui_select.h"


Select::Select(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Select)
{
    ui->setupUi(this);
  ui->widget->setStyleSheet("border-image:url(/root/qt-study/qt-work/qt-midterm2-paper/images/01.jpg)");
    connect(ui->pushButton,&QPushButton::clicked,this,&Select::pushbutton_clicked);
    connect(ui->pushButton_4,&QPushButton::clicked,this,&Select::pushbutton_4_clicked);
}

Select::~Select()
{
    delete ui;
}
void Select::pushbutton_clicked(){

   form1=new MainWindow;
   form1->setGeometry(this->geometry());
   form1->show();
   this->close();
}
void Select::pushbutton_4_clicked(){
    this->close();
}

