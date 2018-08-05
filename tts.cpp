#include "tts.h"
#include <QDebug>


TTS::TTS()
{
  qDebug() << "BUILD TTS";
  speech_ = new QTextToSpeech(0);

}

void TTS::speak()
{
  speech_->say("hola");
  qDebug() << "SOY HOLA";
}
