import QtQuick 2.9
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Material 2.0
import "Content"

Pane {


    function showSubMenu(url) {
        if (stackView2.depth > 1)
            stackView2.pop(null)
        stackView2.push(url)
    }

    TabBar {
        id:tabBar
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.rightMargin: 3
        anchors.left: parent.left
        anchors.leftMargin: 3
        Material.accent: Material.Green
        Material.theme: Material.Light

        TabButton {
            text: qsTr("Antecedentes simulaciones")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Simu/Content/ThAnteced.qml")
                       }
                  }

        TabButton {
            text: qsTr("Importancia de Simular")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Simu/Content/ThImpor.qml")
                       }
                  }

        TabButton {
            text: qsTr("Programacion Offline")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Simu/Content/ThOff.qml")
                       }
                  }

        TabButton {
            text: qsTr("Simulaciones con ROS")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Simu/Content/ThROS.qml")
                       }
                  }

          }
    Pane{
        anchors.top: tabBar.bottom
        anchors.right: parent.right
        anchors.rightMargin: 3
        anchors.left: parent.left
        anchors.leftMargin: 3
        anchors.bottom: parent.bottom

        Material.accent: Material.Green
        Material.theme: Material.Light

    StackView {
        id: stackView2
        anchors.fill: parent
        initialItem:  ThAnteced { id: thAnt }
        pushEnter: StackViewCommonTransition {}
        popEnter: StackViewCommonTransition {}
        popExit: StackViewCommonTransition {}
        pushExit: StackViewCommonTransition {}
        focusPolicy: Qt.StrongFocus
               }
    }




}
