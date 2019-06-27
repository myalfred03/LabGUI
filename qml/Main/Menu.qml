import QtQuick 2.9
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Material 2.0

Pane {
    width: Math.min(imagef.width, imagef.height) / 3
    height: imagef.height //- toolBar.height
    property bool vis: true
    visible: vis


//    function showSubMenu(url) {
//        if (stackView.depth > 1)
//            stackView.pop()
//        stackView.push(url)
//    }

//    function showMainMenu() {
//        if (stackView.depth > 1)
//            stackView.pop()
//    }

    Component {
        id: menuButton
        Button {
            Material.background: "#41cd52"
            focusPolicy: Qt.NoFocus
        }
    }

    ColumnLayout {
        spacing: 10
        anchors.fill: parent

        Loader {
            id: learning
            sourceComponent:  menuButton
            anchors.top: parent.top
            Layout.fillWidth: true
            onLoaded: {
                item.text = qsTr("Start learning")
            }
        }

        Connections {
            target: learning.item
//            onClicked: {
//                learningScreen.refresh()
//                showMainMenu()
//            }
        }

        Loader {
            id: editWords
            anchors.top: learning.bottom
            Layout.fillWidth: true
            sourceComponent: menuButton
            onLoaded: {
                item.text = qsTr("Edit words")
            }
        }

        Connections {
            target: editWords.item
//            onClicked: {
//                showSubMenu("qrc:/screens/EditWordsScreen.qml")
//            }
        }

        Loader {
            id: addNewVocabulary
            anchors.top: editWords.bottom
            Layout.fillWidth: true
            sourceComponent: menuButton
            onLoaded: {
                item.text = qsTr("Edit vocabularies")
            }
        }

        Connections {
            target: addNewVocabulary.item
//            onClicked: {
//                showSubMenu("qrc:/screens/EditVocabulariesScreen.qml")
//            }
        }

        Loader {
            id: statistics
            anchors.top: addNewVocabulary.bottom
            Layout.fillWidth: true
            sourceComponent: menuButton
            onLoaded: {
                item.text = qsTr("Statistics")
            }
        }

        Connections {
            target: statistics.item
//            onClicked: {
//                showSubMenu("qrc:/screens/StatisticScreen.qml")
//            }
        }

        Loader {
            id: translate
            anchors.top: statistics.bottom
            Layout.fillWidth: true
            sourceComponent: menuButton
            onLoaded: {
                item.text = qsTr("Translate word")
            }
        }

        Connections {
            target: translate.item
//            onClicked: {
//                showSubMenu("qrc:/screens/TranslateScreen.qml")
//            }
        }
    }
}
