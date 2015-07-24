#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "database.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QQmlApplicationEngine engine;
    QQmlContext *root = engine.rootContext();
    DataBase *data = new DataBase;

    root->setContextProperty("DataBase", data);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
