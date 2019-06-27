import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.3
import QtQml.Models 2.1
import "qml"



Window {
    id:mainsc
//    property bool vis: true
    visible: true
    width: Screen.width-45
    height: Screen.height
    title: qsTr("Virtual Laboratory")

//    MouseArea {
//        anchors.fill: parent
//        onClicked: {
//            console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
//        }
//    }

//    TextEdit {
//        id: textEdit
//        text: qsTr("Enter some text...")
//        verticalAlignment: Text.AlignVCenter
//        anchors.top: parent.top
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.topMargin: 20
//        Rectangle {
//            anchors.fill: parent
//            anchors.margins: -10
//            color: "transparent"
//            border.width: 1
//        }
//    }

//    ListView {
//        id: contentList
//        interactive: false
//        highlightMoveDuration: 0
//        snapMode: ListView.SnapToItem
//        keyNavigationWraps: false
//        orientation: ListView.Horizontal
//        flickableDirection: Flickable.HorizontalFlick
//        anchors.right: parent.right
//        anchors.left: parent.left
//        anchors.bottom: botbanner.top
//        anchors.top: banner.bottom
//        boundsBehavior: Flickable.StopAtBounds
//        focus: false
//        model: ListModel {
//            Welcome{
//                id:ologinPage
//                width:contentList.width
//                height:contentList.height

//            }
//            ActivityPage{
//                id:oactivityPage
//                width:contentList.width
//                height:contentList.height

//            }
//            ActOnePage{
//                id:oactonePage
//                width:contentList.width
//                height:contentList.height
//            }
//            ActThreePage{
//                id:oactthreePage
//                width:contentList.width
//                height:contentList.height
//            }

//        }
//    }

    Welcome {
        id:welcome
    }
    MainLab{
        id:mainLab
    }

//    DialogWel{
//        id:dialogwel
//    }

}
