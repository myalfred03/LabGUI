import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2  //Dialogs, Scroll, Label, lib
import QtQml.Models 2.3


Dialog {
    id: dialogKLU
    x: (parent.width - width) / 2
    y: (parent.height - height) / 2
    width: 500
    height: 500
    //contentHeight: logo.height * 2
    parent: ApplicationWindow.overlay
    modal: true
    title: "Cinematica Usando URDF"
    standardButtons: Dialog.Close

    Flickable {
        id: flickable
        clip: true
        anchors.fill: parent
        contentHeight: column.height
        Shortcut {
            sequence: "Up"
            onActivated: scrollBar.decrease()
               }
        Shortcut {
            sequence: "Down"
            onActivated: scrollBar.increase()
               }

        Column {
            id: column
            spacing: 20
            width: parent.width

            Image {
                id: logo4
                //width: parent.width / 2
                anchors.horizontalCenter: parent.horizontalCenter
                source: "qrc:/img/dialogsWel/books.png"
                sourceSize.width: 50
                sourceSize.height: 50
                fillMode: Image.PreserveAspectCrop
                  }

            RowLayout{
                spacing: 10
                anchors.left:dialogRBook.left
                anchors.right: dialogRBook.right
                anchors.horizontalCenter: parent.horizontalCenter
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.maximumHeight: 100
                Layout.maximumWidth: 100

                Image {
                    id: logo
                    //width: parent.width / 2
                    //anchors.horizontalCenter: parent.horizontalCenter
                    source: "qrc:/img/dialogsWel/Barrientos.png"
                    sourceSize.width: 90
                    sourceSize.height: 90
                    fillMode: Image.PreserveAspectCrop
                    }
                Image {
                    id: logo2
                    // width: parent.width / 2
                    //anchors.horizontalCenter: parent.horizontalCenter
                    source: "qrc:/img/dialogsWel/NewmanROS.png"
                    sourceSize.width: 100
                    sourceSize.height: 100
                    fillMode: Image.PreserveAspectCrop
                    }
                      }
            Label {
                width: parent.width
                text:  "El laboratorio virtual de robótica contará con modelos creados utilizando URDF y los"
                  +     " mismos podrán ser visualizados con la herramienta RVIZ. El estudiante podrá"
                  +     " visualizar el espacio de trabajo, para una morfología dada, con la ayuda de plugins"
                  +     " desarrollados para la visualización."
                wrapMode: Label.Wrap
                }

            Image {
                id: logo1
                width: parent.width / 2
                anchors.horizontalCenter: parent.horizontalCenter
                fillMode: Image.PreserveAspectFit
                source: "qrc:/img/dialogsWel/Craig.png"
                }
            Label {
                width: parent.width
                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc finibus "
                  + "id auctor nec, efficitur et nisl. Ut venenatis eros in nunc placerat, "
                  + "eu aliquam enim suscipit."
                wrapMode: Label.Wrap
                }

                     }

        ScrollBar.vertical: ScrollBar {
            id:scrollBar
            pressed: true
            active: true
            parent: dialogKLU.contentItem
            anchors.top: flickable.top
            anchors.bottom: flickable.bottom
            anchors.right: parent.right
            anchors.rightMargin: -dialogKLU.rightPadding + 1
            }
        }
}//Dialog1
