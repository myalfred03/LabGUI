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
            text: qsTr("Simu Extracto de articulo 1")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Simu/Content/SimuInfo1.qml")
                       }
                  }

        TabButton {
            text: qsTr("Simu Extracto de articulo 2")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Simu/Content/SimuInfo2.qml")
                       }
                  }

//        TabButton {
//            text: qsTr("Ejemplos Denavit Hartemberg")
//            onClicked: {
//                showSubMenu("qrc:/qml/Main/Kinem/Content/ExDH.qml")
//                       }
//                  }

//        TabButton {
//            text: qsTr("Ejemplos con URDF")
//            onClicked: {
//                showSubMenu("qrc:/qml/Main/Kinem/Content/ExURDF.qml")
//                       }
//                  }

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
        initialItem:  SimuInfo1 { id: sinfo1 }
        pushEnter: StackViewCommonTransition {}
        popEnter: StackViewCommonTransition {}
        popExit: StackViewCommonTransition {}
        pushExit: StackViewCommonTransition {}
        focusPolicy: Qt.StrongFocus
               }

    }


}
