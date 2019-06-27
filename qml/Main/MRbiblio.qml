import QtQuick 2.9
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Material 2.0

Pane {
//    width: Math.min(imagef.width, imagef.height) / 3
//    height:  //- toolBar.height
    property bool vis: true
    property bool bcheck: false
    visible: vis

    function showSubMenu(url) {
        if (stackView.depth > 1 )
            stackView.pop(null)
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
            id: biblioGuide
            checked: true
            text: qsTr("Guia de uso de LAB")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:parent.top
            onClicked: {
                showSubMenu("qrc:/qml/Main/Biblio/ScreenbiblioGuideLAB.qml")
                       }
            ButtonGroup.group: menuButtons
                    }

        RoundButton {
            id: biblioTh
            text: qsTr("Teoria de Robots")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:biblioGuide.bottom
            onClicked: {
                showSubMenu("qrc:/qml/Main/Biblio/ScreenbiblioTheoryR.qml")
                       }
            ButtonGroup.group: menuButtons
                    }
        RoundButton {
            id: biblioAcad
            text: qsTr("Articulos academicos")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:biblioTh.bottom
            onClicked: {
                showSubMenu("qrc:/qml/Main/Biblio/ScreenbiblioArticleR.qml")
                       }
            ButtonGroup.group: menuButtons
                    }

        RoundButton {
            id: biblioBook
            text: qsTr("Libros de Robotica")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:biblioAcad.bottom
            onClicked: {
                showSubMenu("qrc:/qml/Main/Biblio/ScreenbiblioBookR.qml")
                       }
            ButtonGroup.group: menuButtons
                    }

        RoundButton {
            id: biblioROS
            text: qsTr("Libros ROS")
            checkable: true
            Layout.fillWidth: true
            Material.accent: "#41cd52"
            Material.theme: Material.Dark
            anchors.top:biblioBook.bottom
            onClicked: {
                showSubMenu("qrc:/qml/Main/Biblio/ScreenbiblioBookROS.qml")
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
