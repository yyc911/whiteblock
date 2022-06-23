#ifndef SELECT_H
#define SELECT_H

#include <QWidget>
#include"mainwindow.h"
#include<QStackedWidget>
namespace Ui {
class Select;
}

class Select : public QWidget
{
    Q_OBJECT

public:
    explicit Select(QWidget *parent = nullptr);
    ~Select();
 private slots:
    void pushbutton_clicked();
   void pushbutton_4_clicked();

private:
    Ui::Select *ui;
    MainWindow *form1;
    QStackedWidget *stackedWidget;
};

#endif // SELECT_H
