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
                text: "Generalidades de Robótica"
                wrapMode: Text.Wrap
                font.pointSize: 24
                color: "black"
                horizontalAlignment: Text.AlignJustify
                }


            Label {
                width: parent.width
             //   text: "<p> <strong>Fundamentos de Rob&oacute;tica:</strong> Es un libro que va dirigido tanto para los alumnos de ingenier&iacute;a y ciencias como para todo profesional que necesite conocer qu&eacute; es un robot, c&oacute;mo funciona y c&oacute;mo debe utilizarlo, retomando dentro de este libro parte de las cuatro secciones que compone el laboratorio virtaual de Rob&oacute;tica industrial, Morfolog&iacute;a del robot, Herramientas matem&aacute;ticas del Robot, Cinem&aacute;tica del robot, Programaci&oacute;n del robot.</p>"
                wrapMode: Label.Wrap
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignJustify

                text:" <p><strong>Definición y elementos básicos</strong></p>
                    <p>Para la definición de concepto de robot utilizaremos la propuesta por la Federación
                        Internacional de Robótica (IFR) que por robot industrial de manipulación entiende a
                        «una máquina de manipulación automática, reprogramable y multifuncional con tres
                        o más ejes que pueden posicionar y orientar materias, piezas, herramientas o dispositivos
                        especiales para la ejecución de trabajos diversos en las diferentes etapas de la
                        producción industrial, ya sea en una posición fija o en movimiento </p>

                       <p>  De manera general, una instalación robotizada está compuesta por los siguientes
                        elementos principales: </p>

                         <p>
                            <ul>
                                <li>Manipulador.</li>
                                <li>Accionamientos</li>
                                <li>Elementos terminales</li>
                                <li>Periferia del robot</li>
                                <li>Sistemas de seguridad</li>
                            </ul>
                         </p>

                        <p> El manipulador o brazo es un sistema mecánico usado para mover un elemento terminal
                         o carga útil desde un lugar a otro. El manipulador es manejado por un conjunto
                        de accionamientos basados en un sistema de potencia controlado por un sistema de
                        control. La muñeca, montada en el extremo del brazo, permite cambios de orientación
                         de la herramienta o elemento terminal final. La instalación se completa con los
                        elementos periféricos asociados a la aplicación específica y los sistemas necesarios
                        para garantizar la seguridad de las personas.</p>

                        <p><strong>Manipulador</strong></p>

                         <p>Exteriormente un robot industrial consta de una serie de partes rígidas o manipulador,
                        que están unidas entre sí por medio de articulaciones formando una cadena cinemática.
                        El manipulador es un ensamblaje de eslabones y articulaciones que permiten rotación
                        o traslación entre dos de los eslabones. Estos eslabones son sólidos y son sostenidos
                        por una base (horizontal, vertical o suspendida), con una articulación entre la base y
                        el primer eslabón.</p>


                "




                font.pointSize: 13


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
