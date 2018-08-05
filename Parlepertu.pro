TEMPLATE = app

QT += qml quick widgets texttospeech

#Allows to get the strings to translate in QML files
lupdate_only {
	SOURCES = *.qml \
}

SOURCES += main.cpp \
    tts.cpp

RESOURCES += qml.qrc

TRANSLATIONS = Parlepertu_es.ts \
				Parlepertu_en.ts

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    tts.h
