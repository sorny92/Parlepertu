import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    id: view
    title: qsTr("Hello World")
    width: 640
    height: 480
    visible: true

    menuBar: MenuBar {

    }

    /*MainForm {
        anchors.fill: parent
        button1.onClicked: messageDialog.show(qsTr("Button 1 pressed"))
        button2.onClicked: messageDialog.show(qsTr("Button 2 pressed"))
        button3.onClicked: messageDialog.show(qsTr("Button 3 pressed"))
    }*/

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

    GridView {
        width: view.width;
        height: view.height;
        model: CarsModel {}
        delegate: carDelegate
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}
