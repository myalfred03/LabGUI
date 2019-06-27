import QtQuick 2.9
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Material 2.0
import QtWebEngine 1.4
import "Content"

//Pane {


//    function showSubMenu(url) {
//        if (stackView2.depth > 1)
//            stackView2.pop(null)
//        stackView2.push(url)
//    }

//    TabBar {
//        id:tabBar
//        anchors.top: parent.top
//        anchors.right: parent.right
//        anchors.rightMargin: 3
//        anchors.left: parent.left
//        anchors.leftMargin: 3
//        Material.accent: Material.Green
//        Material.theme: Material.Light

//        TabButton {
//            text: qsTr("Mastering Robotics")
//            onClicked: {
//                showSubMenu("qrc:/qml/Main/Biblio/Content/ROSMaster.qml")
//                       }
//                  }

//        TabButton {
//            text: qsTr("ROS fundamentos")
//            onClicked: {
//                showSubMenu("qrc:/qml/Main/Biblio/Content/ROSFund.qml")
//                       }
//                  }

//        TabButton {
//            text: qsTr("ROS Aplicaciones")
//            onClicked: {
//                showSubMenu("qrc:/qml/Main/Biblio/Content/ROSApli.qml")
//                       }
//                  }

//        TabButton {
//            text: qsTr("Guia de uso de ROS")
//            onClicked: {
//                showSubMenu("qrc:/qml/Main/Biblio/Content/ROSGuide.qml")
//                       }
//                  }

//          }
//    Pane{
//        anchors.top: tabBar.bottom
//        anchors.right: parent.right
//        anchors.rightMargin: 3
//        anchors.left: parent.left
//        anchors.leftMargin: 3
//        anchors.bottom: parent.bottom

//        Material.accent: Material.Green
//        Material.theme: Material.Light

//    StackView {
//        id: stackView2
//        anchors.fill: parent
//        initialItem:  ROSMaster { id: rosM }
//        pushEnter: StackViewCommonTransition {}
//        popEnter: StackViewCommonTransition {}
//        popExit: StackViewCommonTransition {}
//        pushExit: StackViewCommonTransition {}
//        focusPolicy: Qt.StrongFocus
//               }
//    }




//}

Pane {

    states: [
        State {
            name: "mastering"
            when: tabBar.currentIndex==0
            PropertyChanges {
                target: webView
                url: urlcv
            }
        },
        State {
            name: "ROSFund"
            when: tabBar.currentIndex==1
            PropertyChanges {
                target: webView
                url: urlcv //"qrc:/3rdParty/pdfjs-1.7.225-dist/web/viewer.html"+"?file="+"qrc:/pdf/2.CURRICULUM-VITAE YESER.pdf"
            }
        },
        State {
            name: "RosAPPl"
            when: tabBar.currentIndex==2
            PropertyChanges {
                target: webView
                url: urlcv
            }
        },
        State {
            name: "GuideROS"
            when: tabBar.currentIndex==3
            PropertyChanges {
                target: webView
                url: urlcv
            }
        }
    ]

    TabBar {
        id:tabBar
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.rightMargin: 3
        anchors.left: parent.left
        anchors.leftMargin: 3
        Material.accent: Material.Green
        Material.theme: Material.Light
        currentIndex: 0

        TabButton {
            text: qsTr("Mastering Robotics")
                  }

        TabButton {
            text: qsTr("ROS fundamentos")
                  }

        TabButton {
            text: qsTr("ROS Aplicaciones")
                  }

        TabButton {
            text: qsTr("Guia de uso de ROS")
//            onClicked: {
//              showSubMenu("qrc:/qml/Main/Biblio/Content/RbKiDy.qml")
//                       }
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

    WebEngineView {
        id: webView
        anchors.fill: parent
        KeyNavigation.priority: KeyNavigation.BeforeItem
        settings.focusOnNavigationEnabled: false
        onContextMenuRequested: function(request) {
            request.accepted = true
        }

        property bool firstLoadComplete: false
        onLoadingChanged: {
            if (loadRequest.status === WebEngineView.LoadSucceededStatus
                && !firstLoadComplete) {
                // Debounce the showing of the web content, so images are more likely
                // to have loaded completely.
                showTimer.start()
            }
        }

        Timer {
            id: showTimer
            interval: 500
            repeat: false
            onTriggered: {
                webView.show(true)
                webView.firstLoadComplete = true
//                recipeList.showHelp()
            }
        }

        Rectangle {
            id: webViewPlaceholder
            anchors.fill: parent
            z: 1
            color: "white"

            BusyIndicator {
                id: busy
                anchors.centerIn: parent
            }
        }


        function showRecipe(url) {
            webView.url = url
        }

        function show(show) {
            if (show === true) {
                busy.running = false
                webViewPlaceholder.visible = false
                               }
            else {
                webViewPlaceholder.visible = true
                busy.running = true
                   }
                            }


    } //WebEngine

    }




}

