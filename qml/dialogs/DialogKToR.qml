import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2  //Dialogs, Scroll, Label, lib
import QtQml.Models 2.3


Dialog {
    id: dialogKToR
    x: (parent.width - width) / 2
    y: (parent.height - height) / 2
    width: 500
    height: 500
    //contentHeight: logo.height * 2
    parent: ApplicationWindow.overlay
    modal: true
    title: "Teoria de la Cinematica de Robots"
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
                source: "qrc:/img/dialogsWel/ToR.png"
                sourceSize.width: 50
                sourceSize.height: 50
                fillMode: Image.PreserveAspectCrop
                }
            Label {
                width: parent.width
                text: "La cinemática del robot estudia el movimiento de este con respecto a un sistema de"
                  + "referencia sin considerar las fuerzas que intervienen. Así, la cinemática se interesa"
                  + "por la descripción analítica del movimiento espacial del robot como una función del"
                  + "tiempo, y en particular por las relaciones entre la posición y la orientación del extremo"
                  +" final del robot con los valores que toman sus coordenadas articulares."
                wrapMode: Label.Wrap
                horizontalAlignment: Text.AlignJustify

                }

            Label {
                width: parent.width
                text: "El laboratorio virtual de robótica que se propone cuenta con recursos que permitirán"
               + "al estudiante realizar experimentos sencillos que le ayudarán a comprender las"
               + "características de la cinemática directa e inversa."
               + " A partir del modelo de un robot, construido utilizando el formato URDF, es posible"
               + " obtener toda la información necesaria de la estructura de este utilizando la librería"
               + " KDL. La información obtenida al utilizar el KDL en combinación con la información"
               + " suministrada por el usuario (por ejemplo, los ángulos de los joints) mediante ciertos"
               + " widgets de la GUI permiten manipular y/o determinar la posición del robot."
               + " La librería KDL también puede ser utilizada para determinar la matriz de"
               + "transformación homogénea la cual es utilizada para determinar la posición y rotación"
               + " del efector final del robot. Los datos obtenidos serán visualizados mediante widgets"
               + "del GUI desarrollados para la representación de datos."
                wrapMode: Label.Wrap
                }

                     }

        ScrollBar.vertical: ScrollBar {
            id:scrollBar
            pressed: true
            active: true
            parent: dialogKToR.contentItem
            anchors.top: flickable.top
            anchors.bottom: flickable.bottom
            anchors.right: parent.right
            anchors.rightMargin: -dialogKToR.rightPadding + 1
            }
        }
}//Dialog1
