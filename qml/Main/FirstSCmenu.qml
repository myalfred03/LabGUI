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
                horizontalAlignment: Text.AlignHCenter
                }

            Label {
                width: parent.width
             //   text: "<p> <strong>Fundamentos de Rob&oacute;tica:</strong> Es un libro que va dirigido tanto para los alumnos de ingenier&iacute;a y ciencias como para todo profesional que necesite conocer qu&eacute; es un robot, c&oacute;mo funciona y c&oacute;mo debe utilizarlo, retomando dentro de este libro parte de las cuatro secciones que compone el laboratorio virtaual de Rob&oacute;tica industrial, Morfolog&iacute;a del robot, Herramientas matem&aacute;ticas del Robot, Cinem&aacute;tica del robot, Programaci&oacute;n del robot.</p>"
                wrapMode: Label.Wrap
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignJustify

                text:" <p>El <strong>laboratorio virtual para robotica industrial utilizando el middleware para robots ROS</strong> fue concebida su idea en las aulas de clases de la universidad nacional de Ingenieria en el modulo de Robotica industrial de la clase de Control Aplicado de la carrera de Ingenieria Electr&oacute;nica.</p>
                    <p>ROS es el eje central de este trabajo el cual puede seguir siendo explotado para dotar de mas practicadas a este LVR</p>
                    <p>IDE de Programación y Herramientas de ROS: </p>

                "
                font.pointSize: 13


                }

            RowLayout{
                spacing: 15
                anchors.left:parent.left

                anchors.horizontalCenter: parent.horizontalCenter
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.maximumHeight: 100
                Layout.maximumWidth: 100
                Image {
                    source: "qrc:/img/firstscreen/200px-ISO_C++_Logo.svg.png"
                    sourceSize.width: 65
                    sourceSize.height: 65
                    fillMode: Image.PreserveAspectCrop
                    }
                Image {
                    //width: parent.width / 2
                    //anchors.horizontalCenter: parent.horizontalCenter
                    source: "qrc:/img/firstscreen/Qt_logo_2016.svg"
                    sourceSize.width: 65
                    sourceSize.height: 65
                    fillMode: Image.PreserveAspectCrop
                    }
                Image {
                    //width: parent.width / 2
                    //anchors.horizontalCenter: parent.horizontalCenter
                    source: "qrc:/img/firstscreen/ROS.png"
                    sourceSize.width: 65
                    sourceSize.height: 65
                    fillMode: Image.PreserveAspectCrop
                    }
                Image {
                    // width: parent.width / 2
                    //anchors.horizontalCenter: parent.horizontalCenter
                    source: "qrc:/img/firstscreen/Rviz_2014.png"
                    sourceSize.width: 65
                    sourceSize.height: 65
                    fillMode: Image.PreserveAspectCrop
                    }

                Image {
                    source: "qrc:/img/firstscreen/gazebo8.png"
                    sourceSize.width: 65
                    sourceSize.height: 65
                    fillMode: Image.PreserveAspectCrop
                    }

                Image {
                    source: "qrc:/img/firstscreen/ri.png"
                    sourceSize.width: 65
                    sourceSize.height: 65
                    fillMode: Image.PreserveAspectCrop
                    }

                      }

            Label {
                width: parent.width
             //   text: "<p> <strong>Fundamentos de Rob&oacute;tica:</strong> Es un libro que va dirigido tanto para los alumnos de ingenier&iacute;a y ciencias como para todo profesional que necesite conocer qu&eacute; es un robot, c&oacute;mo funciona y c&oacute;mo debe utilizarlo, retomando dentro de este libro parte de las cuatro secciones que compone el laboratorio virtaual de Rob&oacute;tica industrial, Morfolog&iacute;a del robot, Herramientas matem&aacute;ticas del Robot, Cinem&aacute;tica del robot, Programaci&oacute;n del robot.</p>"
                wrapMode: Label.Wrap
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignJustify

                text:"
                    <p>Se Puede acceder en este LVR a practicas virtuales de importancia para la Robbótica Industrial</p>
                    <p>Robots Industriales Dentro de este</p>

                "
                font.pointSize: 13

                }

            RowLayout{
                spacing: 10
                anchors.left:parent.left
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
                    sourceSize.width: 65
                    sourceSize.height: 65
                    fillMode: Image.PreserveAspectCrop
                    }
                Image {
                    id: logo2
                    // width: parent.width / 2
                    //anchors.horizontalCenter: parent.horizontalCenter
                    source: "qrc:/img/dialogsWel/Craig.png"
                    sourceSize.width: 65
                    sourceSize.height: 65
                    fillMode: Image.PreserveAspectCrop
                    }

                Image {
                    source: "qrc:/img/dialogsWel/handbook.png"
                    sourceSize.width: 65
                    sourceSize.height: 65
                    fillMode: Image.PreserveAspectCrop
                    }
                Image {
                    source: "qrc:/img/dialogsWel/ROSbook.png"
                    sourceSize.width: 65
                    sourceSize.height: 65
                    fillMode: Image.PreserveAspectCrop
                    }
                      }

//            Image {
//                id: image2
//                width: 200
//                height: 200
//                fillMode: Image.PreserveAspectFit
//                source: "qrc:/img/industrial-robot.png"
//                  }

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
