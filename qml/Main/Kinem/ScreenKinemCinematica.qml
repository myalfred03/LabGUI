import QtQuick 2.9
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Material 2.0
Pane {
    ColumnLayout {
             anchors.fill: parent
             Image {
                 id: image
//                 width: 100
//                 height: 100
////                 fillMode: Image.PreserveAspectFit
                 anchors.horizontalCenter: parent.horizontalCenter
                 sourceSize.width: 600
                 sourceSize.height: 500
                 fillMode: Image.PreserveAspectCrop
                 source: "qrc:/img/loading/ROSGUI_182.png"
                   }

             AnimatedImage {
                 id: image2
                 anchors.horizontalCenter: parent.horizontalCenter
                  width: 100
                  height: 100
                 fillMode: Image.PreserveAspectCrop
                 source: "qrc:/img/loading/Ellipsis-2.2s-150px.gif"

                   }

}
}
