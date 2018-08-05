#ifndef TTS_H
#define TTS_H

#include <QObject>
#include <QVector>

#include <QTextToSpeech>

class TTS :public QObject
{
  Q_OBJECT
public:
  TTS();
  Q_INVOKABLE void speak();

public slots:
  void otherSpeak() {
    speech_->say("HOLA");
  }

private:
  QTextToSpeech *speech_;
  QVector<QVoice> voices_;
};

#endif // TTS_H
