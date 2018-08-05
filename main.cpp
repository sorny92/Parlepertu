#include <QApplication>
#include <QQmlApplicationEngine>

#include "tts.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    qmlRegisterType<TTS>("parlepertu.tts", 1, 0, "TTS");
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
