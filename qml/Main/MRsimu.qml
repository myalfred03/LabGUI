import QtQuick 2.9
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Material 2.0

Pane {
    width: Math.min(imagef.width, imagef.height) / 3
    height: imagef.height //- toolBar.height
    property bool vis: false
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
            id: simuTh
            text: qsTr("Teoria en la Simulación")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:parent.top
            onClicked: {
                showSubMenu("qrc:/qml/Main/Simu/ScreenSimuTheoryR.qml")
                       }
            ButtonGroup.group: menuButtons
                    }

        RoundButton {
            id: simuSDF
            text: qsTr("SDF y Simulación")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:simuTh.bottom
            onClicked: {
                showSubMenu("qrc:/qml/Main/Simu/ScreenSimuSDF.qml")
                       }
            ButtonGroup.group: menuButtons
                    }

        RoundButton {
            id: simuEx
            text: qsTr("Ejemplos de Simulacion")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:simuSDF.bottom
            onClicked: {
                showSubMenu("qrc:/qml/Main/Simu/ScreenSimuScriptExample.qml")
                       }
            ButtonGroup.group: menuButtons
                    }
        RoundButton {
            id: simuInfo
            text: qsTr("Simular con RViz")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:simuEx.bottom
            onClicked: {
                showSubMenu("qrc:/qml/Main/Simu/ScreenSimuInfo.qml")
                launcher.launch3()
                       }
            ButtonGroup.group: menuButtons
                    }

        RoundButton {
            id: simuSimu
            text: qsTr("Simular con Gazebo")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:simuInfo.bottom
            onClicked: {
                showSubMenu("qrc:/qml/Main/Simu/ScreenSimuSimulando.qml")
                launcher.launch4()
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
