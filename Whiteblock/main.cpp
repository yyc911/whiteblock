#include "blockdata.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    qmlRegisterSingletonInstance("Data",1,0,"BlockData",BlockData::getInstance());      //注册一个QML组件Data，版本为1.0，使QML可以调用BlockData对象   (注册单例类)
    const QUrl url(u"qrc:/main.qml"_qs);        //定位main.qml资源
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
