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
            spacing: 10

            Text{
                width: parent.width
                text: "Tipos de Robots"
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

                text:" <p><strong>Clasificación de los robots según sus ejes</strong></p>
                        <p>La mayoría de los estudios relacionados con los robots realizan una clasificación atendiendo
                        al tipo de coordenadas con las que se determina la posición final y a la configuración
                        de sus 3 ejes principales. Atendiendo a este criterio, los robots se clasifican en
                        angular vertical/antropomórfico, paralelo, cartesiano, angular horizontal/scara, esférico
                        y cilíndrico.</p>


                        <p><strong>Robot antropomórfico</strong></p>

                        <p> También llamado manipulador de codo se llama antropomórfico porque simula los
                        movimientos de un brazo humano. El primer eje se corresponde con el cuerpo, el
                        segundo con el brazo, el tercero con el antebrazo y el resto de con la muñeca-mano;
                        la primera articulación se corresponde con el giro de la cintura, la segunda con el del
                        hombro, la tercera con el del codo y el resto están en la muñeca. Este robot posee
                        gran accesibilidad y maniobrabilidad, es rápido y ocupa poco espacio en relación al
                        campo de trabajo que abarca. Debido a sus características es el modelo más versátil.
                        Es el más adecuado en aplicaciones relacionadas con manipulación de piezas de trabajo
                        como soldadura por puntos, soldadura continua, aplicación de masillas o pintura.</p>


                "
                font.pointSize: 13
                }


            Image {
                anchors.horizontalCenter: parent.horizontalCenter
                source: "qrc:/img/content/Industrieroboter.png"
                sourceSize.width: 200
                sourceSize.height: 200
                fillMode: Image.PreserveAspectCrop
                }



            Label {
                width: parent.width
             //   text: "<p> <strong>Fundamentos de Rob&oacute;tica:</strong> Es un libro que va dirigido tanto para los alumnos de ingenier&iacute;a y ciencias como para todo profesional que necesite conocer qu&eacute; es un robot, c&oacute;mo funciona y c&oacute;mo debe utilizarlo, retomando dentro de este libro parte de las cuatro secciones que compone el laboratorio virtaual de Rob&oacute;tica industrial, Morfolog&iacute;a del robot, Herramientas matem&aacute;ticas del Robot, Cinem&aacute;tica del robot, Programaci&oacute;n del robot.</p>"
                wrapMode: Label.Wrap
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignJustify

                text:"  <p><strong>Robot paralelos</strong></p>
                        <p>Son cadenas cinemáticas cerradas, cuyo órgano terminal o plataforma móvil, está conectado
                        a la base mediante varias cadenas cinemáticas seriales independientes. Normalmente
                        consta de seis patas accionadas independientemente entre sí, las cuales, al modificar
                        su longitud, posicionan y/o cambian la orientación de la plataforma que tienen en el
                        extremo donde se coloca el actuador del robot. Son robots con características de ligereza,
                        rigidez y altas aceleraciones que se emplean en procesado de piezas, trasferencia
                        de productos a alta velocidad y posicionamiento de precisión, e incluso, simuladores de
                        vuelo. Por el hecho de converger los seis motores en el desplazamiento del actuador, se
                        consiguen las mayores velocidades, aunque por el mismo motivo los espacios de trabajo
                        son muy reducidos y tienen forma de porción esférica o cilíndrica.</p>"

                font.pointSize: 13

                    }
            Label {
                width: parent.width
             //   text: "<p> <strong>Fundamentos de Rob&oacute;tica:</strong> Es un libro que va dirigido tanto para los alumnos de ingenier&iacute;a y ciencias como para todo profesional que necesite conocer qu&eacute; es un robot, c&oacute;mo funciona y c&oacute;mo debe utilizarlo, retomando dentro de este libro parte de las cuatro secciones que compone el laboratorio virtaual de Rob&oacute;tica industrial, Morfolog&iacute;a del robot, Herramientas matem&aacute;ticas del Robot, Cinem&aacute;tica del robot, Programaci&oacute;n del robot.</p>"
                wrapMode: Label.Wrap
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignJustify

                text:"
                        <p><strong>Robot cartesiano</strong></p>

                        <p>Sus tres articulaciones principales son prismáticas, los ejes son ortogonales entre sí y
                        los desplazamientos sobre ellos dan las coordenadas cartesianas X, Y, Z, de los puntos
                        de trabajo. La estructura puede ser de tipo voladizo o en pórtico. Son rápidos, muy
                        precisos, de fácil control, amplia zona de trabajo y elevada capacidad de carga, pero
                        ocupan mucho espacio relativo y su elemento terminal-herramienta no es especialmente
                        orientable. Se usan en aplicaciones que requieren movimientos lineales de alta
                        precisión en zonas de trabajo grandes que sean fundamentalmente un plano o planos
                        paralelos. Si la precisión necesaria no es alta, los ejes son controlados por medio de PLC
                        y tarjetas electrónicas lo que aventaja notablemente en precio a este tipo de robots.
                        Este tipo de robots, que pueden soportar mucho peso, se utilizan principalmente
                        para la manipulación de piezas de trabajo, almacenamiento, paletización y carga y
                        descarga de máquinas.</p>"

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
