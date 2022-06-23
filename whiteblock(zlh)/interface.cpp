#include "interface.h"
#include "ui_interface.h"

Interface::Interface(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Interface)
{
    ui->setupUi(this);
}

Interface::~Interface()
{
    delete ui;
}

void Interface::on_pushButton_clicked()
{
    this->close();
}

