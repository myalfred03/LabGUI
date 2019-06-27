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
            id: kinemTh
            text: qsTr("Teoria de Cinematica")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:parent.top
            onClicked: {
                showSubMenu("qrc:/qml/Main/Kinem/ScreenKinemTheoryR.qml")
                       }
            ButtonGroup.group: menuButtons
                    }

        RoundButton {
            id: kinemURDF
            text: qsTr("URDF y Cinematica")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:kinemTh.bottom
            onClicked: {
                showSubMenu("qrc:/qml/Main/Kinem/ScreenKinemURDF.qml")
                       }
            ButtonGroup.group: menuButtons
                    }

        RoundButton {
            id: kinemCalc
            text: qsTr("Calculos de Cinématica")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:kinemURDF.bottom
            onClicked: {
                showSubMenu("qrc:/qml/Main/Kinem/ScreenKinemCalcExample.qml")
                       }
            ButtonGroup.group: menuButtons
                    }
        RoundButton {
            id: kinemInfo
            text: qsTr("Mas información")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:kinemCalc.bottom
            onClicked: {
                showSubMenu("qrc:/qml/Main/Kinem/ScreenKinemInfo.qml")
                       }
            ButtonGroup.group: menuButtons
                    }

        RoundButton {
            id: kinemSimu
            text: qsTr("Cinematica de tu Robot")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:kinemInfo.bottom
            onClicked: {
                showSubMenu("qrc:/qml/Main/Kinem/ScreenKinemCinematica.qml")
                launcher.launch()
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
