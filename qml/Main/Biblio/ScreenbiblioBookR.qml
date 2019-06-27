import QtQuick 2.9
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Material 2.0
import QtWebEngine 1.4
import "Content"

Pane {

    states: [
        State {
            name: "craig"
            when: tabBar.currentIndex==0
            PropertyChanges {
                target: webView
                url: urlcv
            }
        },
        State {
            name: "barrientos"
            when: tabBar.currentIndex==1
            PropertyChanges {
                target: webView
                url: urlcv //"qrc:/3rdParty/pdfjs-1.7.225-dist/web/viewer.html"+"?file="+"qrc:/pdf/2.CURRICULUM-VITAE YESER.pdf"
            }
        },
        State {
            name: "Handbook"
            when: tabBar.currentIndex==2
            PropertyChanges {
                target: webView
                url: urlcv
            }
        },
        State {
            name: "Kinematics"
            when: tabBar.currentIndex==3
            PropertyChanges {
                target: webView
                url: urlgzsv
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
            text: qsTr("Craig")
                  }

        TabButton {
            text: qsTr("Barrientos")
                  }

        TabButton {
            text: qsTr("Handbook Robotics")
                  }

        TabButton {
            text: qsTr("Kinematics and Dynamics")
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
