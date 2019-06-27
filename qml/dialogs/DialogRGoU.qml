import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2  //Dialogs, Scroll, Label, lib
import QtQml.Models 2.3


Dialog {
    id: dialogRGoU
    x: (parent.width - width) / 2
    y: (parent.height - height) / 2
    width: 500
    height: 500
    //contentHeight: logo.height * 2
    parent: ApplicationWindow.overlay
    modal: true
    title: "Manual de uso del Laboratorio"
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
                source: "qrc:/img/dialogsWel/guide.png"
                sourceSize.width: 50
                sourceSize.height: 50
                fillMode: Image.PreserveAspectCrop
                }
            Label {
                width: parent.width
                text: "<p>Para facilitar el uso del <strong>laboratorio virtual</strong> se ha elaborado un manual de uso del laboratorio en el cual se presentaran todas las funcionalidades con las que cuenta este mismo, contara con diferentes pruebas de ejemplo para verificar la efectividad de los recursos del laboratorio virtual y una mini gui&aacute; de uso base del <strong>Sistema operativo para Robots (ROS)</strong> para aquel estudiante o acad&eacute;mico interesado en seguir la investigaciones del uso de este sistema.</p>"
                wrapMode: Label.Wrap
//                font.family: "Times New Roman"
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignJustify
                }

            Label {
                width: parent.width
                text: "ABC de ROS"
                wrapMode: Label.Wrap
                }
            Image {
                //width: parent.width / 2
                anchors.horizontalCenter: parent.horizontalCenter
                source: "qrc:/img/dialogsWel/bookabc.png"
                sourceSize.width: 50
                sourceSize.height: 50
                fillMode: Image.PreserveAspectCrop
                }

            Label {
                width: parent.width
                text: " <p> Dentro de este <strong>LVR</strong>  se ha considerado la necesidad de transmitir los conocimientos b&aacute;sicos de ROS con el cual fue desarrollado esta herramienta virtual.</p>
                       <p>El acad&eacute;mico interesado encontrara informaci&oacute;n puntual que, facilitara y aportara respuestas fundamentales del middleware ROS, esto con el fin de informar /motivar  y extender el uso de ROS a mas aplicaciones que se desarrollen dentro de la Universidad Nacional de Ingenier&iacute;a</p>
                      "
                wrapMode: Label.Wrap
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignJustify
                }
            Image {
                //width: parent.width / 2
                anchors.horizontalCenter: parent.horizontalCenter
                source: "qrc:/img/dialogsWel/GazeboCamSonar.png"

                sourceSize.width: 200
                sourceSize.height: 200
                fillMode: Image.PreserveAspectCrop
                }

            Label {
                width: parent.width
                text: "Aplicación de ROS y Gazebo en simulación de un Robot Humanoide, Competencia ROBOCUP"
                font.family: "Times New Roman"
                font.italic: true
                wrapMode: Label.Wrap
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
                }



                     }

        ScrollBar.vertical: ScrollBar {
            id:scrollBar
            pressed: true
            active: true
            parent: dialogRGoU.contentItem
            anchors.top: flickable.top
            anchors.bottom: flickable.bottom
            anchors.right: parent.right
            anchors.rightMargin: -dialogRGoU.rightPadding + 1
            }
        }
}//Dialog1

