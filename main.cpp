#include <datamodel.h>
#include <QApplication>
#include <QDebug>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QStandardPaths>

#include "tts.h"

int main(int argc, char* argv[]) {
  QApplication app(argc, argv);
#if defined(Q_OS_ANDROID)
  QString data_path = "/sdcard";
#elif defined(Q_OS_IOS)
#else
  QString data_path =
      QStandardPaths::standardLocations(QStandardPaths::GenericDataLocation)[0];
#endif
  QList<QObject*> dataList;
  dataList.append(new DataModel(
      "seat", "file://" + data_path + "/Parlepertu/data/seat.png", "seat"));
  QQmlApplicationEngine engine;
  qmlRegisterType<TTS>("parlepertu.tts", 1, 0, "TTS");
  QQmlContext* context = engine.rootContext();
  context->setContextProperty("dataModel", QVariant::fromValue(dataList));

  engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

  return app.exec();
}
