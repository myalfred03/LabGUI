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
            text: qsTr("Archivos URDF")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Model/Content/URDFDetails.qml")
                       }
                  }

        TabButton {
            text: qsTr("Joints")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Model/Content/URDFJoint.qml")
                       }
                  }

        TabButton {
            text: qsTr("Eslabones")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Model/Content/URDFEsla.qml")
                       }
                  }

        TabButton {
            text: qsTr("Dinamica")
            onClicked: {
                showSubMenu("qrc:/qml/Main/Model/Content/URDFDynam.qml")
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
        initialItem:  URDFDetails { id: urdfDetails }
        pushEnter: StackViewCommonTransition {}
        popEnter: StackViewCommonTransition {}
        popExit: StackViewCommonTransition {}
        pushExit: StackViewCommonTransition {}
        focusPolicy: Qt.StrongFocus
               }
    }




}

