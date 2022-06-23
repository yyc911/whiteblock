#include "select.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Select w;
    w.show();

    return a.exec();
}
