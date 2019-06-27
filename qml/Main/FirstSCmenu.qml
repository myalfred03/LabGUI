import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls.Material 2.0


Flickable {
    id: flickable
    clip: true
    contentHeight: pane.height

    Shortcut {
        sequence: "Up"
        onActivated: scrollBar.decrease()
           }

    Shortcut {
        sequence: "Down"
        onActivated: scrollBar.increase()
           }

    Pane {
        id:pane
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 5

        Column {
            id: column
            anchors.fill: parent
            spacing: 10

            Text{
                width: parent.width
                text: "Bienvenidos al laboratorio virtual de Robotica Industrial"

                wrapMode: Text.Wrap
                font.pointSize: 24
                color: "white"
                horizontalAlignment: Text.AlignJustify
                }

            Image {
                id: image2
                width: 200
                height: 200
                fillMode: Image.PreserveAspectFit
                source: "qrc:/img/industrial-robot.png"
                  }

            Text{
                width: parent.width
                text: "Este Laboratorio usa Recursos de Software de ROS (Robot operating System)"

                wrapMode: Text.Wrap
                font.pointSize: 24
                color: "white"
                horizontalAlignment: Text.AlignJustify
                }

            Image {
                id: image1
                width: 200
                height: 200
                fillMode: Image.PreserveAspectFit
                source: "qrc:/img/ROS_INDUSTRIAL.png"
                  }


            CheckBox {
                text: qsTr("E-mail")
                     }

            CheckBox {
                text: qsTr("Calendar")
                     }

            CheckBox {
            text: qsTr("Contacts")
                     }

            Image {
                id: image
                width: 133
                height: 88
                fillMode: Image.PreserveAspectFit
                source: "qrc:/img/welcome.png"
                  }

               }

         }//pane

    ScrollBar.vertical: ScrollBar {
        id:scrollBar
        pressed: true
        active: true
        anchors.top: flickable.top
        anchors.bottom: flickable.bottom
        anchors.right: flickable.right
        anchors.rightMargin: -flickable.rightPadding + 2
                                 }

    } //flickable
