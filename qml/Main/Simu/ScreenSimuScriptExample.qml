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
            text: qsTr("Ejemplo basico simulación")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Simu/Content/ExScriptBas.qml")
                       }
                  }

        TabButton {
            text: qsTr("Ejemplos de simulación")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Simu/Content/ExScriptSimu.qml")
                       }
                  }

        TabButton {
            text: qsTr("Ejemplos Tareas repetitivas")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Simu/Content/ExScriptPickPlace.qml")
                       }
                  }

        TabButton {
            text: qsTr("Prueba tu script")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Simu/Content/ExScriptTest.qml")
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
        initialItem:  ExScriptBas { id: exSc }
        pushEnter: StackViewCommonTransition {}
        popEnter: StackViewCommonTransition {}
        popExit: StackViewCommonTransition {}
        pushExit: StackViewCommonTransition {}
        focusPolicy: Qt.StrongFocus
               }

    }


}
