import QtQuick 2.0

Item {
  width: grid.cellWidth
  height: grid.cellHeight
  id: top_item
  Column {
    id: column
    anchors.fill: parent
    Image {
      property int img_size: top_item.height*0.8
      anchors.horizontalCenter: parent.horizontalCenter
      sourceSize.height: img_size
      sourceSize.width: img_size
      source: origin
      fillMode: Image.PreserveAspectFit
    }
    Text {
      text: name
      style: Text.Raised
      verticalAlignment: Text.AlignVCenter
      anchors.horizontalCenter: parent.horizontalCenter
    }
  }
}


/*##^## Designer {
    D{i:0;height:100;width:100}D{i:2;anchors_height:0}
}
 ##^##*/
