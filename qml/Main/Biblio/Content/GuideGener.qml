import QtQuick 2.9
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Material 2.0

Flickable{
    id: flickable
    clip: true
    contentHeight: pane.height
    Material.theme: Material.Light


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
        anchors.bottom: parent.bottom
//        Material.accent: Material.Green
//        Material.theme: Material.Dark

        Column {
            id: column
            anchors.fill: parent
            spacing: 20
            Text{
                width: parent.width
                text: "1.Especificaciones generales"
                wrapMode: Text.Wrap
                font.pointSize: 24
                color: "black"
                horizontalAlignment: Text.AlignJustify
                }


            Text{
                width: parent.width
                text: "Concepto de Robot "
                wrapMode: Text.Wrap
                font.pointSize: 24
                color: "black"
                horizontalAlignment: Text.AlignJustify
                }

            Text{
                width: parent.width
                text: "Robot (RIA): Un robot industrial es un manipulador multifuncional reprogramable,"+
                      "capaz de mover materias, piezas, herramientas o dispositivos especiales, según trayectorias"+
                      "variables, programadas para realizar tareas diversas."
                wrapMode: Text.Wrap
                font.pointSize: 20
                color: "black"
                horizontalAlignment: Text.AlignJustify
                }

            Text{
                width: parent.width
                text: "Concepto de Robot Industrial "
                wrapMode: Text.Wrap
                font.pointSize: 24
                color: "black"
                horizontalAlignment: Text.AlignJustify
                }

            Text{
                width: parent.width
                text: "Robot manipulador industrial (ISO): Manipulador de 3 o más ejes, con control "+
            "automático, reprogramable, multiaplicación, móvil o no, destinado a ser utilizado en aplicaciones"+
            "de automatización industrial. Incluye al manipulador (sistema mecánico y accionadores) y al"+
            "sistema de control (software y hardware de control y potencia)"
                wrapMode: Text.Wrap
                font.pointSize: 20
                color: "black"
                horizontalAlignment: Text.AlignJustify
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
}
