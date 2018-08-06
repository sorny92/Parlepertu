#include "tts.h"
#include <QDebug>


TTS::TTS()
{
  qDebug() << "BUILD TTS";
  speech_ = new QTextToSpeech(0);

}

void TTS::speak()
{
  speech_->say(text_);
  qDebug() << "SAYING " << text_;
}

QString TTS::text()
{
  return text_;
}

void TTS::setText(const QString &text)
{
  if(text_ != text) {
      text_ = text;
      emit textChanged();
    }
}
