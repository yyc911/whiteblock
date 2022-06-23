#include "mainwindow.h"
#include "select.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    MainWindow::setWindowTitle(tr("别踩白块"));
    connect(ui->widget,&TestWidget::value,this,[=](int value){
        ui->label->setText(QString::number(value));
    });
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_clicked()
{
    ui->widget->start();
    ui->widget->setFocus();
}

void MainWindow::on_pushButton_2_clicked()
{
    ui->widget->restart();
    ui->widget->setFocus();
}
void MainWindow::on_pushButton_3_clicked()
{
    Select *form1=new Select;
    form1->setGeometry(this->geometry());
    form1->show();
    this->close();
}
