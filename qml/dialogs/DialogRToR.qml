import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2  //Dialogs, Scroll, Label, lib
import QtQml.Models 2.3


Dialog {
    id: dialogRToR
    x: (parent.width - width) / 2
    y: (parent.height - height) / 2
    width: 500
    height: 500
    //contentHeight: logo.height * 2
    parent: ApplicationWindow.overlay
    modal: true
    title: "Teoria de Robotica Considera en este LAB"
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
                id: logo1
                anchors.horizontalCenter: parent.horizontalCenter
                source: "qrc:/img/dialogsWel/fingertip_cone.png"
                sourceSize.width: 80
                sourceSize.height: 80
                fillMode: Image.PreserveAspectCrop
                }
            Label {
                width: parent.width
                text: "<p>El <strong>laboratorio de rob&oacute;tica virtual</strong> que se propone tiene un alcance limitado ya que de los temas considerados en un curso b&aacute;sico de rob&oacute;tica industrial el mismo solo contempla recursos para la experimentaci&oacute;n en temas como herramientas matem&aacute;ticas, morfolog&iacute;a del robot, cinem&aacute;tica y programaci&oacute;n de robots. El trabajo pretende mostrar la potencialidad del sistema operativo para robots (ROS) y se pretende hacerlo en el uso de esta herramienta virtual (LVR). La informaci&oacute;n suministrada acerca de ROS y el laboratorio propuesto deben servir de base para ampliar los recursos de este.</p>"
                wrapMode: Label.Wrap
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignJustify
                }


            Label {
                width: parent.width  //<ol> Ordered list
                text: "<p><strong>Los Fundamentos te&oacute;ricos retomados en el LVR son</strong> </p>
                         <p>
                            <ul>
                                <li>Morfolog&iacute;a de Robots</li>
                                <li>Herramientas matem&aacute;ticas</li>
                                <li>Cinem&aacute;tica directa e inversa</li>
                                <li>Programaci&oacute;n y simulaci&oacute;n del robot </li>
                            </ul>
                         </p>
                      "
                wrapMode: Label.Wrap
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignJustify
                }

            Image {
                width: parent.width / 2
                anchors.horizontalCenter: parent.horizontalCenter
                source: "qrc:/img/dialogsWel/morf.png"
                fillMode: Image.PreserveAspectFit
                }
            Label {
                width: parent.width
                text: "<p><strong>Morfolog&iacute;a de Robots</strong> El laboratorio virtual de rob&oacute;tica cuenta; con modelos creados utilizando URDF y los mismos pueden ser visualizados con la herramienta RVIZ. El estudiante puede; visualizar el espacio de trabajo, para una morfolog&iacute;a dada, con la ayuda de plugins desarrollados para la visualizaci&oacute;n. Interactuar con diferentes tipos de articulaciones ya sean prism&aacute;ticas o de revoluci&oacute;n y robots de diferentes grados de libertad. El estudiante tiene; la posibilidad de experimentar con modelos construidos por &eacute;l mismo utilizando el formato URDF.</p>"
                wrapMode: Label.Wrap
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignJustify
                }

            Image {
                width: parent.width / 2
                anchors.horizontalCenter: parent.horizontalCenter
                source: "qrc:/img/dialogsWel/mat.png"
                fillMode: Image.PreserveAspectFit
                }
            Label {
                width: parent.width
                text: "<p><strong>Herramientas Matem&aacute;ticas</strong> Para contribuir al entendimiento y aplicaci&oacute;n de dichas herramientas el laboratorio virtual de rob&oacute;tica incorpora los recursos necesarios para que los estudiantes puedan analizar la posici&oacute;n de un objeto utilizando coordenadas esf&eacute;ricas y cil&iacute;ndricas, as&iacute; como la orientaci&oacute;n de este mediante la matriz de rotaci&oacute;n, los &aacute;ngulos de Euler, y los cuaternios.</p>"
                wrapMode: Label.Wrap
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignJustify
                }
            Image {
                width: parent.width / 2
                anchors.horizontalCenter: parent.horizontalCenter
                source: "qrc:/img/dialogsWel/kin.png"
                fillMode: Image.PreserveAspectFit
                }
            Label {
                width: parent.width
                text: "<p><strong>Cinem&aacute;tica del Robot</strong> El laboratorio virtual de rob&oacute;tica cuenta con recursos que permiten al estudiante realizar experimentos sencillos que le ayudar&aacute;n a comprender las  caracter&iacute;sticas de la cinem&aacute;tica directa e inversa. A partir del modelo de un robot, construido utilizando el formato URDF, es posible obtener toda la informaci&oacute;n necesaria de la estructura de este utilizando la librer&iacute;a KDL. La informaci&oacute;n obtenida al utilizar el KDL en combinaci&oacute;n con la informaci&oacute;n suministrada por el usuario (por ejemplo, los &aacute;ngulos de los joints) mediante ciertos widgets de la GUI permiten manipular y/o determinar la posici&oacute;n del robot.</p>"
                wrapMode: Label.Wrap
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignJustify
                }
            Image {
                width: parent.width / 2
                anchors.horizontalCenter: parent.horizontalCenter
                source: "qrc:/img/dialogsWel/prog.png"
                fillMode: Image.PreserveAspectFit
                }
            Label {
                width: parent.width
                text: "<p><strong>Programaci&oacute;n y Simulaci&oacute;n del Robot</strong> El laboratorio virtual de rob&oacute;tica permite al usuario escribir un programa (script, programaci&oacute;n textual) que adopta ciertas convenciones, utilizadas en el software de programaci&oacute;n de robots de ABB Rapid, para que uno de los robots (modelos disponibles en el LVR) realice una tarea sencilla.</p>"
                wrapMode: Label.Wrap
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignJustify
                }


                     }

        ScrollBar.vertical: ScrollBar {
            id:scrollBar
            pressed: true
            active: true
            parent: dialogRToR.contentItem
            anchors.top: flickable.top
            anchors.bottom: flickable.bottom
            anchors.right: parent.right
            anchors.rightMargin: -dialogRToR.rightPadding + 1
            }
        }
}//Dialog1
