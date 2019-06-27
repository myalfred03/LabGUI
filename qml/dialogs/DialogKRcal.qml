import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2  //Dialogs, Scroll, Label, lib
import QtQml.Models 2.3


Dialog {
    id: dialogKRcal
    x: (parent.width - width) / 2
    y: (parent.height - height) / 2
    width: 500
    height: 500
    //contentHeight: logo.height * 2
    parent: ApplicationWindow.overlay
    modal: true
    title: "Cinematica de Robots calculos y verificación"
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
                //width: parent.width / 2
                anchors.horizontalCenter: parent.horizontalCenter
                source: "qrc:/img/model.png"
                sourceSize.width: 350
                sourceSize.height: 350
                fillMode: Image.PreserveAspectCrop
                }
            Label {
                width: parent.width
                text: "La resolución del problema cinemático directo permite conocer cuál es la posición y "
                +"orientación que adopta el extremo del robot cuando cada una de las variables que fijan la posición"
                +"u orientación de sus articulaciones toma valores determinados."
                +"Dado que son las variables articulares las que pueden ser leídas directamente de los"
                +"correspondientes sensores por la unidad de control del robot, el modelo cinemático directo será"
                +"utilizado por éste, entre otros fines, para presentar al usuario información relativa a la"
                +"localización del extremo del robot."
                wrapMode: Label.Wrap
                }
            Image {
                //width: parent.width / 2
                anchors.horizontalCenter: parent.horizontalCenter
                source: "qrc:/img/kinemdegree.png"
                sourceSize.width: 350
                sourceSize.height: 350
                fillMode: Image.PreserveAspectCrop
                }

                     }

        ScrollBar.vertical: ScrollBar {
            id:scrollBar
            pressed: true
            active: true
            parent: dialogKRcal.contentItem
            anchors.top: flickable.top
            anchors.bottom: flickable.bottom
            anchors.right: parent.right
            anchors.rightMargin: -dialogKRcal.rightPadding + 1
            }
        }
}//Dialog1

