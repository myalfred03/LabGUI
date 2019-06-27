import QtQuick 2.9
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Material 2.0

Pane {
    width: Math.min(imagef.width, imagef.height) / 3
    height: imagef.height //- toolBar.height
    property bool vis: false
//    property real itemon: 0
    visible: vis

    function showSubMenu(url) {
        if (stackView.depth > 1)
            stackView.pop()
        stackView.push(url)
    }

//    function showMainMenu() {
//        if (stackView.depth > 1)
//            stackView.pop()
//    }


    ColumnLayout {
        spacing: 30
        anchors.fill: parent

        ButtonGroup {
            id: menuButtons
        }

        RoundButton {
            id: modelTh
            text: qsTr("Teoria Morfologia R.I.")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:parent.top
            onClicked: {
                showSubMenu("qrc:/qml/Main/Morfo/ScreenMorfoTheoryR.qml")
//            itemon=1
            }
            ButtonGroup.group: menuButtons
                    }

        RoundButton {
            id: modelURDF
            text: qsTr("Lenguaje URDF")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:modelTh.bottom
            onClicked: {
                showSubMenu("qrc:/qml/Main/Morfo/ScreenMorfoURDF.qml")
                       }
            ButtonGroup.group: menuButtons
                    }

        RoundButton {
            id: modelEx
            text: qsTr("Ejemplos modelos")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:modelURDF.bottom
            onClicked: {
                showSubMenu("qrc:/qml/Main/Morfo/ScreenMorfoExample.qml")
                       }
            ButtonGroup.group: menuButtons
                    }

        RoundButton {
            id: modelInfo
            text: qsTr("Videos Morfologia")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:modelEx.bottom
            onClicked: {
                showSubMenu("qrc:/qml/Main/Morfo/ScreenMorfoInfo.qml")
                       }
            ButtonGroup.group: menuButtons
                    }

        RoundButton {
            id: modelRobo
            text: qsTr("Modela tu Robot")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:modelInfo.bottom
            onClicked: {
                showSubMenu("qrc:/qml/Main/Morfo/ScreenMorfoModelando.qml")
//                launcher.launch2()
                       }
            ButtonGroup.group: menuButtons
                    }

        ToolButton {
            id:bwelcome
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 50
            width: 100
            height: 100
            ToolTip.timeout: 3000
            ToolTip.delay : 150
            ToolTip.visible: hovered
            ToolTip.text: "Ir a Bienvenida."

            ColumnLayout {
                id: aboutC
                spacing: 2
                anchors.centerIn: parent

                Image {
                    source: "qrc:/img/welcome.png"
                    sourceSize.width: 65
                    sourceSize.height: 65
                    fillMode: Image.PreserveAspectCrop
                    anchors.horizontalCenter: parent.horizontalCenter
                      }

                Text {
                    text: "Welcome"
                    font.pointSize: 10
                    font.bold: true
                    color: "#FFFFFF"
                    anchors.horizontalCenter: parent.horizontalCenter
                    wrapMode: Label.Wrap
                      }
                 }
                onClicked: {
                           mainLab.vis = false
                           welcome.vis = true
                       }

                 }//Button Welcome
    }
}
