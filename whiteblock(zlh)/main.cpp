#include "mainwindow.h"
#include<QQmlComponent>
#include<QQmlEngine>
#include<QQuickItem>
#include <QApplication>
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();

    return a.exec();
}
