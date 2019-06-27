import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2  //Dialogs, Scroll, Label, lib
import Qt.labs.settings 1.0
import QtQml.Models 2.3
import QtQuick.Controls.Material 2.1
import QtQuick.Controls.Universal 2.1
import "Main"


Item {
    id:mainLab
    property bool vis: false
//    property bool vismenu: true

    function showSubMenu(url) {
        if (stackView.depth > 1)
            stackView.pop()
        stackView.push(url)
    }

    Image {
        id:imagef
        visible: vis
        width: Screen.width-45
        height: Screen.height
        z: -1
        opacity: 1.0
        source: "qrc:/img/background02.png"
        smooth: true

        ToolBar {
            id: toolBar
            visible: vis
            z:1
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0

            ToolButton {
                id: menuBar
                visible: true
                contentItem: Image {
                fillMode: Image.Pad
                source: "qrc:/img/mainLab/drawer.png"
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter
                                    }
                onClicked: {
                    panemenu.visible = !panemenu.visible
                           }
                       }

            Label {
                id: titleLabel
                text: "Laborotorio Virtual de Robótica Industrial"
                font.pixelSize: 20
                anchors.centerIn: parent
                  }

            ToolButton {
                id: about
                visible: true
                anchors.right: parent.right
                anchors.rightMargin: 5
                anchors.top:parent.top
                contentItem: Image {
                fillMode: Image.Pad
                source: "qrc:/img/mainLab/menu.png"
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter
                                    }
    //            onClicked: {
    //                menu.visible = !actionPane.visible
    //                       }
                        }

                  }//ToolBar

        TabBar {
                id: tabBar
                anchors.right: parent.right
//                anchors.rightMargin: 45
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: toolBar.bottom
                anchors.topMargin: 5

                //currentIndex: swipeView.currentIndex
                TabButton {
                    text: qsTr("Recursos Bibliograficos")
                    onClicked: {
                        mRbiblio.vis=true
                        mRmodel.vis=false
                        mRkine.vis=false
                        mRsimu.vis=false
                        mRmorfo.vis=false
                        panemenu.visible = true
                        showSubMenu("qrc:/qml/Main/Biblio/ScreenbiblioGuideLAB.qml")

                                }
                          }
                TabButton {
                    text: qsTr("Modelación de Robots")
                    onClicked: {
                        mRbiblio.vis=false
                        mRmodel.vis=true
                        mRkine.vis=false
                        mRsimu.vis=false
                        mRmorfo.vis=false
                        panemenu.visible = true
                        showSubMenu("qrc:/qml/Main/Model/ScreenModelTheoryR.qml")

                               }
                          }
                TabButton {
                    text: qsTr("Morfologia de Robots I")
                    onClicked: {
                        mRbiblio.vis=false
                        mRmodel.vis=false
                        mRkine.vis=false
                        mRsimu.vis=false
                        mRmorfo.vis=true
                        panemenu.visible = true
                        showSubMenu("qrc:/qml/Main/Morfo/ScreenMorfoTheoryR.qml")

                               }
                          }
                TabButton {
                    text: qsTr("Cinemática de Robots")
                    onClicked: {
                        mRbiblio.vis=false
                        mRmodel.vis=false
                        mRkine.vis=true
                        mRsimu.vis=false
                        mRmorfo.vis=false
                        panemenu.visible = true
                        showSubMenu("qrc:/qml/Main/Kinem/ScreenKinemTheoryR.qml")

                               }
                          }
                TabButton {
                    text: qsTr("Simulación de Robots")
//                    anchors.right: parent.right
//                    anchors.rightMargin: 45
                    onClicked: {

                        mRbiblio.vis=false
                        mRmodel.vis=false
                        mRkine.vis=false
                        mRsimu.vis=true
                        mRmorfo.vis=false
                        panemenu.visible = true
                        showSubMenu("qrc:/qml/Main/Simu/ScreenSimuTheoryR.qml")

                               }
                           }
            } //tabbar

        Pane{
            id:panemenu
            anchors.top: tabBar.bottom
            anchors.topMargin: 5
            anchors.bottom: imagef.bottom
            width: Math.min(imagef.width, imagef.height) / 3
            //height: 500 //- toolBar.height


            MRbiblio{
                id:mRbiblio
                anchors.fill: parent
                    }
            MRmodel{
                id:mRmodel
                anchors.fill: parent
                   }
            MRkine{
                id:mRkine
                anchors.fill: parent
                   }
            MRsimu{
                id:mRsimu
                anchors.fill: parent
                  }

            MRmorfo{
                id:mRmorfo
                anchors.fill: parent
            }

                 }//panemenu

        Page {
            id: mainmenu
            focus: true
            width: imagef.width - (panemenu.width +5)
            height: imagef.height - (toolBar.height + tabBar.height)
            anchors.top: tabBar.bottom
            anchors.topMargin: 5
            anchors.left: panemenu.right
            anchors.bottom: imagef.bottom
//            anchors.leftMargin: 5


            states: [
                State {
                    name: "wider"
                    when: !panemenu.visible
                    PropertyChanges {
                        target: mainmenu
                        width: imagef.width
                        anchors.left: imagef.left


                    }
                },
                State {
                    name: "narrower"
                    when: panemenu.visible
                    PropertyChanges {
                        target: mainmenu
                        width: imagef.width - (panemenu.width +5)
                        anchors.top: tabBar.bottom
                        anchors.topMargin: 5
                        anchors.left: panemenu.right
                        anchors.leftMargin: 5

                    }
                }
            ]

                StackView {
                    id: stackView
                    anchors.fill: parent

//                    anchors.right: parent.right
//                    anchors.rightMargin: 45
                    focus: true
                    initialItem: FirstSCmenu { id: firstSCmenu }
//                    pop:stackView.pop(null)

//                    pushEnter: stackView.clear()
                    pushEnter: StackViewCommonTransition {}
                    popEnter: StackViewCommonTransition {}
                    popExit: StackViewCommonTransition {}
                    pushExit: StackViewCommonTransition {}
                    focusPolicy: Qt.StrongFocus
                           }

            }


          }//image





}
