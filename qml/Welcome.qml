import QtQuick 2.7
import QtQuick.Window 2.0 //Screen.widht
import QtGraphicalEffects.private 1.0
import QtQuick.Controls.Universal 2.1
import QtQuick.Controls.Material 2.1
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.1
import Qt.labs.settings 1.0
import "dialogs"


Item {
    id:welcome
    property bool vis: true
    property real time_hour : 0
    property real time_min : 0
    property real time_sec : 0
    FontLoader { id: textFont;    source: "qrc:/ReFormation Sans Regular.ttf" }
    FontLoader { id: numericFont; source: "qrc:/ReFormation Sans Regular.ttf" }
    FontLoader { id: fontSystem;  source: "qrc:/ReFormation Sans Regular.ttf" }
    FontLoader { id: localFont;   source: "qrc:/ReFormation Sans Regular.ttf" }

    Image {
        id:imagef
        visible: vis
        width: Screen.width-45
        height: Screen.height
        z: -1
        opacity: 1.0
        source: "qrc:/img/background02.png"
        smooth: true
        //}//image


        Rectangle{
            id:banner
            x: 0
            y: 0
            width: Screen.width-45
            height: 80
            anchors.top: parent.top
            anchors.bottom: swipeView.top

                        color: "#00000000"
                        anchors.bottomMargin: 20
                        opacity: 1
                        anchors.topMargin: 52
            z: 1

            Rectangle{
                id:welcom
                y: -6
                height: 111
                anchors.right: parent.right
                anchors.rightMargin: 132
                anchors.top: rlogoUNI.bottom
                                anchors.topMargin: 13
                                color: "#191c28"
                                radius: 25
                z: 2
                anchors.left: parent.left
                anchors.leftMargin: 132
                border.width: 3
                border.color: "#da300e"
                opacity: 0.3
            }
            Rectangle{
                id:rlogoUNI
                                anchors.right: banner.right
                                anchors.rightMargin: 0
                anchors.left: banner.left
                anchors.leftMargin: 0
                anchors.top: banner.top
                anchors.topMargin: -42
                //                anchors.bottom: welcom.top
//                anchors.bottomMargin: -105
                width: 30
                height: 112



                color: "#191c28"
                radius: 25
                border.width: 3
                border.color: "#409fe3"
                opacity: 0.1
            }


            Text {
                id: welcome2
                x: 0
                y: 83
                anchors.right: parent.left
                anchors.rightMargin: 2
                //                anchors.top: parent.top
                //                anchors.topMargin: 15
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 15
                anchors.left: parent.right
                anchors.leftMargin: 2
                width: 629
                height: 91
                color: "#fbfbfb"
                text: "Bienvenidos al laboratorio Virtual de Robótica Industrial"
                verticalAlignment: Text.AlignVCenter
                opacity: 1
                horizontalAlignment: Text.AlignHCenter
                font.family: textFont.name
                font.pixelSize: 40
                font.bold: false
            }



            Item {
                id: logoUNI
                y: 0
                width: 776
                height: 101
                anchors.top: welcom.top
                anchors.topMargin: -113
                anchors.left: parent.left
                anchors.leftMargin: 8
                clip: false
                transformOrigin: Item.Center


                Image {
                    id: image2
                    y: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 35
                    width: 133
                    height: 88
                    fillMode: Image.PreserveAspectFit
                    source: "qrc:/img/UNI-LOGOa.png"

                }

                Text {
                    id: txtSystem15
                    x: 444
                    y: -4
                    width: 440
                    height: 35
                    color: "#ffffff"
                    text: qsTr("Universidad Nacional de Ingeniería")
                    font.family: textFont.name
                    horizontalAlignment: Text.AlignHCenter
                    z: 2
                    font.pointSize: 26
                    font.bold: true
                }

                Text {
                    id: txtSystem2
                    x: 430
                    y: 44
                    width: 440
                    height: 34
                    color: "#ffffff"
                    text: qsTr("Facultad de electrotecnia y computación \nIngeniería Electrónica")
                    horizontalAlignment: Text.AlignHCenter
                    z: 3
                    font.pointSize: 17
                    font.family: textFont.name
                    font.bold: true
                }

//                Image {
//                    id: image
//                    x: 239
//                    y: -6
//                    width: 126
//                    height: 100
//                    fillMode: Image.PreserveAspectFit
//                    source: "qrc:/img/FEC.png"
//                }
            }

            Item {
                id: logoNIC
                x: 1018
                anchors.right: parent.right
                anchors.rightMargin: 22
                width: 281
                height: 92
                anchors.top: parent.top
                anchors.topMargin: -32
                //                anchors.bottom: welcom.top
//                anchors.bottomMargin: 7
                transformOrigin: Item.Center
                z: 1
                Text {
                    id: hmsText
                    x: -71
                    y: 0
                    width: 180
                    height: 25
                    color: "#ffffff"
                    text: qsTr("00:00:00")
                    horizontalAlignment: Text.AlignHCenter
                    styleColor: "#00000000"
                    font.pixelSize: 22
                }

                Image {
                    id: image3
                    x: 109
                    y: 8
                    width: 159
                    height: 78
                    z: 3
                    fillMode: Image.PreserveAspectFit
                    source: "qrc:/img/ni.jpg"
                }

                Text {
                    id: txtSystem16
                    x: -71
                    y: 27
                    width: 180
                    height: 35
                    color: "#ffffff"
                    text: qsTr("Nicaragua")
                    verticalAlignment: Text.AlignVCenter
                    font.family: textFont.name
                    font.pointSize: 22
                    z: 2
                    horizontalAlignment: Text.AlignHCenter
                    font.bold: true
                }

                Text {
                    id: txtSystem3
                    x: -71
                    y: 60
                    width: 180
                    height: 34
                    color: "#ffffff"
                    text: qsTr("Managua")
                    verticalAlignment: Text.AlignVCenter
                    font.family: textFont.name
                    font.pointSize: 14
                    z: 3
                    horizontalAlignment: Text.AlignHCenter
                    font.bold: true

                }


            }
        }   //Rectangle Banner



        Timer {
            interval: 1000; running: true; repeat: true
            //onTriggered: time.text = Qt.formatDateTime(new Date(), "dddd\nyyyy-MM-dd\n-MMM-\nhh-mm-ss")
            onTriggered:
            {
                time_sec++;
                if(time_sec > 59)
                {
                    time_sec = 0
                    time_min++
                    if (time_min>59)
                    {
                        time_min=0
                        time_hour++
                    }
                }

                hmsText.text=new Date().toLocaleString(Qt.locale(),"hh:mm:ss")
                // ddayText.text=new Date().toLocaleString(Qt.locale(),"dddd")
            }
        }
        RowLayout{
            id:missontime
            width: 841
            transformOrigin: Item.Center
            spacing: 1
            anchors.right: parent.right
            anchors.rightMargin: 280
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 70
            anchors.left: parent.left
            anchors.leftMargin: 280





            Text {
                id: lblMIssionTime
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.maximumHeight: 80
                Layout.maximumWidth: 80
                color: Qt.hsla(0.57,0.0,1,0.8)
                text: "Tiempo usando LAB :"
                font.family: textFont.name
                font.pixelSize: 30
                font.bold: false
            }
            Text {
                id: hr
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.maximumHeight: 80
                Layout.maximumWidth: 10
                color: "#66bfd5e9"
                text: time_hour.toLocaleString(Qt.locale("00"),"A",0)
                font.family: textFont.name
                font.pixelSize: 30
                font.bold: false
            }

            Text {
                id: lblhour
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.maximumHeight: 80
                Layout.maximumWidth: 20
                color: Qt.hsla(0.57,0.0,1,0.8)
                text: "HR"
                font.family: textFont.name
                font.pixelSize: 20
                font.bold: false
            }
            // Item Minute

            Text {
                id: min
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.maximumHeight: 80
                Layout.maximumWidth: 10
                color: "#66bfd5e9"
                text: time_min.toLocaleString(Qt.locale("00"),"A",0)
                font.family: textFont.name
                font.pixelSize: 30
                font.bold: false
            }

            Text {
                id: lblmin
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.maximumHeight: 80
                Layout.maximumWidth: 20
                color: Qt.hsla(0.57,0.0,1,0.8)
                text: "MIN"
                font.family: textFont.name
                font.pixelSize: 20
                font.bold: false
            }


            Text {
                id: sec
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.maximumHeight: 80
                Layout.maximumWidth: 10
                color: "#66bfd5e9"
                text: time_sec.toLocaleString(Qt.locale("00"),"A",0)
                font.family: textFont.name
                font.pixelSize: 30
                font.bold: false
            }

            Text {
                id: lblsec
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.maximumHeight: 80
                Layout.maximumWidth: 20
                color: Qt.hsla(0.57,0.0,1,0.8)
                text: "SEC"
                font.family: textFont.name
                font.pixelSize: 20
                font.bold: false
            }
        } // item_mission_time

        //        Rectangle{
        //            id:rowR
        //            anchors.right: parent.right
        //            anchors.rightMargin: 180
        //            anchors.left: parent.left
        //            anchors.leftMargin: 180
        //            anchors.top: parent.bottom
        //            anchors.topMargin: 70
        //            anchors.bottom: missontime.top
        //            anchors.bottomMargin: 5

        //           // anchors.centerIn: parent

        //            Material.foreground: "white"
        //            radius: 25
        //            border.width: 3
        //            border.color: "#da300e"
        //            opacity: 0.1
        //                  } //Rectangle RowLayout

        //        Text {
        //            anchors.top: rowR.top
        //            anchors.topMargin: 5
        //            anchors.left: parent.left
        //            anchors.right: parent.right
        //            width: parent.width
        //            wrapMode: Label.Wrap
        //            horizontalAlignment: Text.AlignHCenter
        //            color: "#ffffff"
        //            text: "Funcionalidades del Laboratorio Virtual de Robótica Industrial."
        //            font.pointSize: 15
        //             }// Text RowLayout



        StackLayout  {
            id: swipeView
            y: 247
            height: 330
//            anchors.top: banner.bottom
            anchors.bottom: missontime.top
            anchors.bottomMargin: 70
            anchors.right: parent.right
            anchors.rightMargin: 180
            anchors.left: parent.left
            anchors.leftMargin: 180
            currentIndex: tabBar.currentIndex
//            color: "transparent"
//            Material.background: Material.Teal
//            Material.foreground: Material.Pink
            Material.accent: Material.color(Material.Purple)

            Material.elevation: 6
            Flickable {
//                id: flickable
//                clip: true
                anchors.fill: parent
                contentHeight: column.height
//                width: swipeView.width
//                height: swipeView.height
//                Pane {
//                    id:pane
//                    anchors.right: parent.right
//                    anchors.rightMargin: 8
//                    anchors.left: parent.left
//                    anchors.leftMargin: 5
//                    anchors.bottom: parent.bottom
                Column{
                    id: column
                    spacing: 10
                    anchors.fill: parent
                    Text {
                        color: "white"
                        width: parent.width
                        horizontalAlignment: Text.AlignJustify
                        text:" <p>El <strong>laboratorio virtual para robotica industrial utilizando el middleware para robots ROS</strong> fue concebida su idea en las aulas de clases de la universidad nacional de Ingenieria en el modulo de Robotica industrial de la clase de Control Aplicado de la carrera de Ingenieria Electr&oacute;nica.</p>
                            <p>El tutor actual de este trabajo y catedratico de la clase de control aplicado <strong>MSc. Alejandro M&eacute;ndez T.</strong> detecto la falta de consolidacion de conocimiento al mostrar la matem&aacute;tica descriptiva de ciertos modelos de robots series.</p>
                            <p>Por lo tanto en conjunto con el monografiante<strong> Br. Yeser A. Morales C.</strong> se elaboro un plan de trabajo para el diseño e implementación de un laboratorio virtual de Robotica industrial para la universidad, esto debido a la carencia de consolidacion del conocimiento y por la falta de infraestructura fisica en la universidad.</p>"
                        wrapMode: Text.Wrap
                        textFormat: Text.RichText
                        font.pointSize: 15

                    }// Text RowLayout
                    Text {
                        //                        anchors.top: parent.top
                        //                        anchors.topMargin: 5
                        //                        anchors.left: parent.left
                        //                        anchors.right: parent.right
                        //                        anchors.fill: parent

                        //                    width: parent.width
                        wrapMode: Label.Wrap
                        horizontalAlignment: Text.AlignHCenter
                        color: "#ffffff"
                        text: "Breve Descripcion del Laboratorio"
                        font.pointSize: 12
                    }// Text RowLayout

                }
//            }
          }

            Pane {
                width: swipeView.width
                height: swipeView.height

                ColumnLayout{
                    spacing: 60
                    anchors.fill: parent
                    Text {
                        //                        anchors.top: parent.top
                        //                        anchors.topMargin: 5
                        //                        anchors.left: parent.left
                        //                        anchors.right: parent.right
                        anchors.fill: parent

                        width: parent.width
                        wrapMode: Label.Wrap
                        horizontalAlignment: Text.AlignHCenter
                        color: "#ffffff"
                        text: "Funcionalidades del Laboratorio Virtual de Robótica Industrial."
                        font.pointSize: 15
                    }// Text RowLayout


                    RowLayout {
                        id:rowM //Row Master
                        spacing: 20
                        //                        anchors.fill: parent
                        anchors.centerIn: parent
                        //                                            anchors.top: parent.bottom
                        //                                            anchors.topMargin: 110
                        //                                            anchors.bottom: parent.bottom
                        //                                            anchors.bottomMargin: 300
                        ////                                            anchors.left: parent.left
                        ////                                            anchors.leftMargin: 200
                        ////                                            anchors.right: parent.right
                        ////                                            anchors.rightMargin: 200

                        Button {
                            id: biblio
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Layout.preferredWidth: 100
                            Layout.maximumHeight: 150
                            Layout.maximumWidth: 150
                            Layout.preferredHeight: 100

                            ColumnLayout {
                                spacing: 2
                                anchors.centerIn: parent

                                Image {
                                    source: "qrc:/img/books.png"
                                    sourceSize.width: 75
                                    sourceSize.height: 75
                                    fillMode: Image.PreserveAspectCrop
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }

                                Text {
                                    color: "#ffffff"
                                    text: "Recursos\nBibliograficos"
                                    width: 75
                                    height: 75
                                    font.pointSize: 12
                                    horizontalAlignment: Text.AlignHCenter
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }

                            }//column

                            onClicked: biblioMenu.open()

                            Menu {
                                id: biblioMenu
                                x: parent.width - width
                                y: parent.height - height
                                transformOrigin: Menu.TopLeft

                                MenuItem {
                                    text: "Manual de uso del LAB"
                                    onTriggered: dialogRGoU.open()
                                }
                                MenuItem {
                                    text: "Libros de Robótica"
                                    onTriggered: dialogRBook.open()
                                }
                                MenuItem {
                                    text: "Teoria de Robots"
                                    onTriggered: dialogRToR.open()

                                }
                            }

                        } //Button biblio

                        ToolButton {
                            ToolTip.timeout: 3000
                            ToolTip.delay : 150
                            ToolTip.visible: hovered
                            ToolTip.text: "Si Lees la documentación\nTe sera mas Facil\nModelar tu Robot :)."
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Layout.maximumHeight: 80
                            Layout.maximumWidth: 80

                            Image {
                                source: "qrc:/img/step1.png"
                                sourceSize.width: 50
                                sourceSize.height: 50
                                fillMode: Image.PreserveAspectCrop
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.verticalCenter: parent.verticalCenter
                            }
                        }

                        Button {
                            id:model
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Layout.preferredWidth: 100
                            Layout.maximumHeight: 150
                            Layout.maximumWidth: 150
                            Layout.preferredHeight: 100

                            ColumnLayout {
                                spacing: 2
                                anchors.centerIn: parent

                                Image {
                                    source: "qrc:/img/modelURDF.png"
                                    sourceSize.width: 75
                                    sourceSize.height: 75
                                    fillMode: Image.PreserveAspectCrop
                                    anchors.horizontalCenter: parent.horizontalCenter

                                }

                                Text {
                                    color: "#ffffff"
                                    text: "Modelacion \nde Robots"
                                    width: 75
                                    height: 75
                                    font.pointSize: 11
                                    horizontalAlignment: Text.AlignHCenter
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }

                            }//column

                            onClicked: modelMenu.open()

                            Menu {
                                id: modelMenu
                                x: parent.width - width
                                y: parent.height - height
                                transformOrigin: Menu.TopLeft

                                MenuItem {
                                    text: "Teoria de Modelación"
                                    onTriggered: dialogMToR.open()
                                }
                                MenuItem {
                                    text: "Languaje URDF"
                                    onTriggered: dialogMLU.open()
                                }
                                MenuItem {
                                    text: "Modela tu Robot"
                                    onTriggered: dialogMRb.open()
                                }
                            }

                        } //Button model

                        ToolButton {
                            ToolTip.timeout: 3000
                            ToolTip.delay : 150
                            ToolTip.visible: hovered
                            ToolTip.text: "Al modelar tu propio Robot\naprenderas a calcular\ny verificar sus movimientos :)."
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Layout.maximumHeight: 80
                            Layout.maximumWidth: 80

                            Image {
                                source: "qrc:/img/step2.png"
                                sourceSize.width: 50
                                sourceSize.height: 50
                                fillMode: Image.PreserveAspectCrop
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.verticalCenter: parent.verticalCenter
                            }
                        }

                        Button {
                            id:kinema
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Layout.preferredWidth: 100
                            Layout.maximumHeight: 150
                            Layout.maximumWidth: 150
                            Layout.preferredHeight: 100

                            ColumnLayout {
                                spacing: 2
                                anchors.centerIn: parent
                                Image {
                                    source: "qrc:/img/Kinema.png"
                                    sourceSize.width: 75
                                    sourceSize.height: 75
                                    fillMode: Image.PreserveAspectCrop
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }

                                Text {
                                    color: "#ffffff"
                                    text: "Cinematica\n de Robots"
                                    width: 75
                                    height: 75
                                    font.pointSize: 12
                                    horizontalAlignment: Text.AlignHCenter
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }

                            }//column

                            onClicked: kinemaMenu.open()

                            Menu {
                                id: kinemaMenu
                                x: parent.width - width
                                y: parent.height - height
                                transformOrigin: Menu.TopLeft

                                MenuItem {
                                    text: "Teoria de Cinemática"
                                    onTriggered: dialogKToR.open()
                                }
                                MenuItem {
                                    text: "URDF y Cinematica"
                                    onTriggered: dialogKLU.open()
                                }
                                MenuItem {
                                    text: "Calcula la Cinematica"
                                    onTriggered: dialogKRcal.open()
                                }
                            }

                        } //Button

                        ToolButton {
                            ToolTip.timeout: 2500
                            ToolTip.delay : 150
                            ToolTip.visible: hovered
                            ToolTip.text: "Ahora que sabes de Cinematica\nTe sera facil programar\nuna rutina para un Robot :)."
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Layout.maximumHeight: 80
                            Layout.maximumWidth: 80

                            Image {
                                source: "qrc:/img/step3.png"
                                sourceSize.width: 50
                                sourceSize.height: 50
                                fillMode: Image.PreserveAspectCrop
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.verticalCenter: parent.verticalCenter
                            }
                        }

                        Button {
                            id:simul
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Layout.preferredWidth: 100
                            Layout.maximumHeight: 150
                            Layout.maximumWidth: 150
                            Layout.preferredHeight: 100

                            ColumnLayout {
                                spacing: 2
                                anchors.centerIn: parent
                                Image {
                                    source: "qrc:/img/Simu100x.png"
                                    sourceSize.width: 75
                                    sourceSize.height: 75
                                    fillMode: Image.PreserveAspectCrop
                                    anchors.horizontalCenter: parent.horizontalCenter

                                }

                                Text {
                                    color: "#ffffff"
                                    text: "Simulación\nde Robots "
                                    width: 75
                                    height: 75
                                    font.pointSize: 12
                                    horizontalAlignment: Text.AlignHCenter
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }

                            }//columnsimulation

                            onClicked: simulMenu.open()

                            Menu {
                                id: simulMenu
                                x: parent.width - width
                                y: parent.height - height
                                transformOrigin: Menu.TopLeft

                                MenuItem {
                                    text: "Teoria en la Simulación"
                                    onTriggered: dialogSToR.open()
                                }
                                MenuItem {
                                    text: "SDF y Simulación"
                                    onTriggered: dialogSsdf.open()
                                }
                                MenuItem {
                                    text: "Aprende con tu Robot Virtual"
                                    onTriggered: dialogSRo.open()
                                }
                            }

                        } //Buttonsimulation


                    }//RowLayout

                }//ColumnLayout

            }




        }

        TabBar {
            id: tabBar
            anchors.top: swipeView.bottom
            anchors.topMargin: 2
            anchors.bottom: missontime.top
            anchors.bottomMargin: 20
            anchors.right: parent.right
            anchors.rightMargin: 180
            anchors.left: parent.left
            anchors.leftMargin: 180
            currentIndex: swipeView.currentIndex

            TabButton {
                text: "1"
            }
            TabButton {
                text: "2"
            }
        }


        Button {
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            width: 100
            height: 100

            ColumnLayout {
                id: aboutC
                spacing: 2
                anchors.centerIn: parent

                Image {
                    source: "qrc:/img/about.png"
                    sourceSize.width: 65
                    sourceSize.height: 65
                    fillMode: Image.PreserveAspectCrop
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Autor"
                    font.pointSize: 10
                    font.bold: true
                    color: "#FFFFFF"
                    anchors.horizontalCenter: parent.horizontalCenter
                    wrapMode: Label.Wrap
                }
            }
            onClicked: dialogLV.open()

        }//Button About

        Button {
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            width: 100
            height: 100
            ToolTip.timeout: 3000
            ToolTip.delay : 150
            ToolTip.visible: hovered
            ToolTip.text: "Ir a Menu Principal."

            ColumnLayout {
                id: goLabC
                spacing: 2
                anchors.centerIn: parent

                Image {
                    source: "qrc:/img/Mainlab.png"
                    sourceSize.width: 40
                    sourceSize.height: 40
                    fillMode: Image.PreserveAspectCrop
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    text: "Ir a LAB"
                    font.pointSize: 10
                    font.bold: true
                    color: "#FFFFFF"
                    anchors.horizontalCenter: parent.horizontalCenter
                    wrapMode: Label.Wrap
                }
            }
            onClicked: {
                vis = false
                //mainsc.vis= false
                mainLab.vis = true

            }

        }//Button Main

    }//image

    // Dialogos con los textos

    DialogRBook{
        id:dialogRBook
    }
    DialogWel{
        id:dialogRB1
    }
    DialogGuide{
        id:dialogguide
    }
    DialogLV{
        id:dialogLV
    }
    DialogRToR{
        id:dialogRToR
    }
    DialogRGoU{
        id:dialogRGoU
    }
    DialogKLU{
        id:dialogKLU
    }
    DialogKRcal{
        id:dialogKRcal
    }
    DialogKToR{
        id:dialogKToR
    }

    DialogMLU {
        id: dialogMLU
    }
    DialogMRb {
        id: dialogMRb
    }
    DialogMToR {
        id: dialogMToR
    }
    DialogSRo {
        id: dialogSRo
    }

    DialogSsdf {
        id: dialogSsdf
    }
    DialogSToR {
        id: dialogSToR
    }
} //Item Window welcome
