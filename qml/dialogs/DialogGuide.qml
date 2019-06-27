import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2  //Dialogs, Scroll, Label, lib
import QtQml.Models 2.3

Dialog {
    id: dialogguide
    modal: true
    focus: true
    title: "About"
//                      x: (imagef.width - width) / 2
//                      y: imagef.height / 6
     x: (parent.width - width) / 2
     y: (parent.height - height) / 2
     parent: ApplicationWindow.overlay

    width: 400
    contentHeight: aboutColumn.height

    Column {
        id: aboutColumn
        spacing: 20

        Label {
            width: dialogguide.availableWidth
            text: "The Qt Quick Controls 2 module delivers the next generation user interface controls based on Qt Quick."
            wrapMode: Label.Wrap
            font.pixelSize: 12
        }

        Label {
            width: dialogguide.availableWidth
            text: "In comparison to the desktop-oriented Qt Quick Controls 1, Qt Quick Controls 2 "
                + "are an order of magnitude simpler, lighter and faster, and are primarily targeted "
                + "towards embedded and mobile platforms."
            wrapMode: Label.Wrap
            font.pixelSize: 12
        }
    }
}
