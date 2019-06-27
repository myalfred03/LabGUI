import QtQuick 2.9
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Material 2.0

Flickable{
    id: flickable
    clip: true
    contentHeight: pane.height
    Material.theme: Material.Light


    Shortcut {
        sequence: "Up"
        onActivated: scrollBar.decrease()
           }

    Shortcut {
        sequence: "Down"
        onActivated: scrollBar.increase()
           }
    Pane {
        id:pane
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.bottom: parent.bottom
//        Material.accent: Material.Green
//        Material.theme: Material.Dark

        Column {
            id: column
            anchors.fill: parent
            spacing: 20
            Text{
                width: parent.width
                text: "1.Antecedentes en simulaciones"
                wrapMode: Text.Wrap
                font.pointSize: 24
                color: "black"
                horizontalAlignment: Text.AlignJustify
                }


            Text{
                width: parent.width
                text: "Sonar GNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "So GnarNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "Sonar GNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "Sonar GNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "So GnarNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "Sonar GNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "and two different GUI options, Octopi or Pamac."
                wrapMode: Text.Wrap
                font.pointSize: 20
                color: "black"
                horizontalAlignment: Text.AlignJustify
                }

            Text{
                width: parent.width
                text: "Sonar GNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "So GnarNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "Sonar GNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "Sonar GNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "So GnarNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "Sonar GNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "and two different GUI options, Octopi or Pamac."
                wrapMode: Text.Wrap
                font.pointSize: 20
                color: "black"
                horizontalAlignment: Text.AlignJustify
                }

            Text{
                width: parent.width
                text: "Sonar GNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "So GnarNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "Sonar GNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "Sonar GNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "So GnarNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "Sonar GNU/Linux has three different options for managing "+
                   "packages. The original command line option, Pacman "+
                   "and two different GUI options, Octopi or Pamac."
                wrapMode: Text.Wrap
                font.pointSize: 20
                color: "black"
                horizontalAlignment: Text.AlignJustify
                }


            }

         }//pane

    ScrollBar.vertical: ScrollBar {
        id:scrollBar
        pressed: true
        active: true
        anchors.top: flickable.top
        anchors.bottom: flickable.bottom
        anchors.right: flickable.right
        anchors.rightMargin: -flickable.rightPadding + 2
                                 }
}
