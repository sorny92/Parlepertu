#ifndef DATAMODEL_H
#define DATAMODEL_H

#include <QImage>
#include <QObject>

class DataModel : public QObject {
  Q_OBJECT

  Q_PROPERTY(QString name READ text)
  Q_PROPERTY(QString origin READ image)
  Q_PROPERTY(QString textSpeech READ textSpeech)

 public:
  DataModel(QString text, QString image_path, QString text_speech);

  QString text() const { return text_; }
  QString image() const { return image_; }
  QString textSpeech() {
    return text_speech_.size() != 0 ? text_speech_ : text_;
  }

 private:
  QString text_;
  QString image_;
  QString text_speech_;
};

#endif  // DATAMODEL_H
