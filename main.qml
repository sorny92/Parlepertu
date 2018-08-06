import QtQuick 2.4
import QtQuick.Controls 2.2
import QtQuick.Window 2.3
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.11
import parlepertu.tts 1.0

ApplicationWindow {
  id: view
  title: qsTr("Hello World")
  width: 640
  height: 480
  visible: true

  TTS {
    id: tts
  }

  ColumnLayout{
    id: vertical_layout
    anchors.fill: parent
    spacing: 2

    RowLayout {
      id: rowLayout
      Layout.alignment: Qt.AlignLeft | Qt.AlignTop
      Layout.fillWidth: true
      Layout.maximumHeight: vertical_layout.height*0.2
      Layout.minimumHeight: 100
      z: 10

      TextArea {
        id: textArea
        text: qsTr("Text Area")
        z: 10
        Layout.maximumHeight: rowLayout.height
        Layout.minimumWidth: 100
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        onTextChanged: tts.text = textArea.text
      }

      Button {
        anchors.right: view.right
        z:10
        onClicked: tts.speak()
        text: "speak"
        Layout.fillHeight: true
        Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
      }

    }

    GridView {
      id: grid
      width: view.width;
      height: view.height;
      snapMode: GridView.SnapToRow
      Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
      Layout.fillHeight: true
      Layout.fillWidth: true
      model: CarsModel {}
      delegate: carDelegate
    }

  }

  Component {
    id: carDelegate
    Item {
      width: grid.cellWidth;
      height: grid.cellHeight;
      Column {
        spacing: 5;
        Image {
          source: origin;
          width: 90;
          height: width;
        }
        Text {
          text: name;
          anchors.horizontalCenter: parent.horizontalCenter;
        }
      }
    }
  }



}

/*##^## Designer {
    D{i:0;height:720;width:1280}
}
 ##^##*/
