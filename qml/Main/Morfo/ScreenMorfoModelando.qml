import QtQuick 2.9
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Material 2.0
Pane {
    ColumnLayout {
             anchors.fill: parent
             AnimatedImage {
                 id: image2
                 anchors.horizontalCenter: parent.horizontalCenter
//                 width: 200
//                 height: 200
//                 fillMode: Image.PreserveAspectFit
                 source: "qrc:/img/gif3.gif"

                   }

}
}
