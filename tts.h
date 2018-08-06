#ifndef TTS_H
#define TTS_H

#include <QObject>
#include <QVector>

#include <QTextToSpeech>

class TTS :public QObject
{
  Q_OBJECT
  Q_PROPERTY(QString text READ text WRITE setText NOTIFY textChanged)
public:
  TTS();
  Q_INVOKABLE void speak();
  QString text();
  void setText(const QString &text);

signals:
  void textChanged();

private:
  QTextToSpeech *speech_;
  QVector<QVoice> voices_;
  QString text_;
};

#endif // TTS_H
