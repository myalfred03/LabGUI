import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2  //Dialogs, Scroll, Label, lib
import QtQml.Models 2.3


Dialog {
    id: dialogMLU
    x: (parent.width - width) / 2
    y: (parent.height - height) / 2
    width: 500
    height: 500
    //contentHeight: logo.height * 2
    parent: ApplicationWindow.overlay
    modal: true
    title: "Modelado de Robots con URDF"
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

            Label {
                width: parent.width
                text: "El formato empleado para el modelo del brazo está denominado por el acrónimo inglés URDF"
                 +" (Unified Robot Description Format), que emplea el lenguaje xml. Consiste en un árbol de"
                 +"elementos geométricos (links) conectados entre sí mediante uniones (joints) que determinan"
                 +"el parentesco entre ellos. Estas uniones pueden ser fijas o móviles, las móviles pueden"
                 +"ser a su vez rotacionales, lineales o flotantes. "
                wrapMode: Label.Wrap
                }

            Image {
                id: logo1
                width: parent.width / 2
                anchors.horizontalCenter: parent.horizontalCenter
                fillMode: Image.PreserveAspectFit
                source: "qrc:/img/arbolrobot.png"
                }
            Label {
                width: parent.width
                text: "URDF permite armar el robot utilizando un modelo de arbol "
                  + "Como el mostrado anteriormente en la imagen"
                      + "Se puede modelar un robot industrial, robot movil o un robot humanoide"


                wrapMode: Label.Wrap
                }

                     }

        ScrollBar.vertical: ScrollBar {
            id:scrollBar
            pressed: true
            active: true
            parent: dialogMLU.contentItem
            anchors.top: flickable.top
            anchors.bottom: flickable.bottom
            anchors.right: parent.right
            anchors.rightMargin: -dialogMLU.rightPadding + 1
            }
        }
}//Dialog1
