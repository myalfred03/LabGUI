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
            text: qsTr("Ejemplos Modelo I")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Model/Content/ExModel1.qml")
                       }
                  }

        TabButton {
            text: qsTr("Ejemplos Modelo II")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Model/Content/ExModel2.qml")
                       }
                  }

        TabButton {
            text: qsTr("Ejemplos de R. Industrial I")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Model/Content/ExModelInd1.qml")
                       }
                  }

        TabButton {
            text: qsTr("Ejemplos de R. Industrial II")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Model/Content/ExModelInd2.qml")
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
        initialItem:  ExModel1 { id: exM1 }
        pushEnter: StackViewCommonTransition {}
        popEnter: StackViewCommonTransition {}
        popExit: StackViewCommonTransition {}
        pushExit: StackViewCommonTransition {}
        focusPolicy: Qt.StrongFocus
               }

    }


}
