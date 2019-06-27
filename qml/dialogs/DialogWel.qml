import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2  //Dialogs, Scroll, Label, lib
//import QtQml.Models 2.3



   Dialog {
      id: dialogRB1

     x: (parent.width - width) / 2
      y: (parent.height - height) / 2
      width: 500
      height: 500
      contentHeight: logo.height * 2
      parent: ApplicationWindow.overlay

      modal: true
      title: "Content"
      standardButtons: Dialog.Close


      Flickable {
          id: flickable
          clip: true
          anchors.fill: parent
          contentHeight: column.height
          Shortcut {
              sequence: "Up"
              onActivated: scrollBar.decrease()
          }
          Shortcut {
              sequence: "Down"
              onActivated: scrollBar.increase()
          }

//          Keys.onUpPressed:
//          Keys.onDownPressed: scrollBar.increase()

          Column {
              id: column
              spacing: 20
              width: parent.width

              Image {
                  id: logo
                  width: parent.width / 2
                  anchors.horizontalCenter: parent.horizontalCenter
                  fillMode: Image.PreserveAspectFit
                  source: "qrc:/img/UNI-LOGOa.png"
              }

              Label {
                  width: parent.width
                  text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc finibus "
                      + "in est quis laoreet. Interdum et malesuada fames ac ante ipsum primis "
                      + "in faucibus. Curabitur eget justo sollicitudin enim faucibus bibendum. "
                      + "Suspendisse potenti. Vestibulum cursus consequat mauris id sollicitudin. "
                      + "Duis facilisis hendrerit consectetur. Curabitur sapien tortor, efficitur "
                      + "id auctor nec, efficitur et nisl. Ut venenatis eros in nunc placerat, "
                      + "eu aliquam enim suscipit."
                      + "in est quis laoreet. Interdum et malesuada fames ac ante ipsum primis "
                      + "in faucibus. Curabitur eget justo sollicitudin enim faucibus bibendum. "
                      + "Suspendisse potenti. Vestibulum cursus consequat mauris id sollicitudin. "
                      + "Duis facilisis hendrerit consectetur. Curabitur sapien tortor, efficitur "
                      + "id auctor nec, efficitur et nisl. Ut venenatis eros in nunc placerat, "
                      + "eu aliquam enim suscipit."
                      + "in est quis laoreet. Interdum et malesuada fames ac ante ipsum primis "
                      + "in faucibus. Curabitur eget justo sollicitudin enim faucibus bibendum. "
                      + "Suspendisse potenti. Vestibulum cursus consequat mauris id sollicitudin. "
                      + "Duis facilisis hendrerit consectetur. Curabitur sapien tortor, efficitur "
                      + "id auctor nec, efficitur et nisl. Ut venenatis eros in nunc placerat, "
                      + "eu aliquam enim suscipit."
                  wrapMode: Label.Wrap
              }
          }

          ScrollBar.vertical: ScrollBar {
              id: scrollBar
              active: true
              pressed: true
              parent: dialogRB1.contentItem
              anchors.top: flickable.top
              anchors.bottom: flickable.bottom
              anchors.right: parent.right
              anchors.rightMargin: -dialogRB1.rightPadding + 1
          }


      }
  }//Dialog1

