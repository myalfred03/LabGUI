import QtQuick 2.8
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2  //Dialogs, Scroll, Label, lib

Dialog {
    id: dialogLV
    modal: true
    focus: true
    title: "About Virtual Laboratory"
    x: (parent.width - width) / 2
    y: (parent.height - height) / 2
    parent: ApplicationWindow.overlay
    width: 400
    contentHeight: aboutColumn.height

    Column {
        id: aboutColumn
        spacing: 10

        Label {
            width: dialogLV.availableWidth
            text: "Developer"
            padding: 10
            font.family: "Times New Roman"
            font.underline: false
            font.italic: true
            font.bold: true
            horizontalAlignment: Text.AlignLeft
            wrapMode: Text.WordWrap
            font.pixelSize: 15
              }

        Image {
            id: logo
            anchors.horizontalCenter: parent.horizontalCenter
            source: "qrc:/img/developer/YE.jpg"
            sourceSize.width: 100
            sourceSize.height: 100
            fillMode: Image.PreserveAspectCrop
              }

        Label {
            width: dialogLV.availableWidth
            text: "Yeser A. Morales C."
            font.weight: Font.ExtraBold
            font.capitalization: Font.AllUppercase
            fontSizeMode: Text.FixedSize
            font.italic: true
            topPadding: 0
            bottomPadding: 0
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            font.family: "Courier"
            wrapMode: Text.WordWrap
            font.pixelSize: 14
              }

        Label {
            width: dialogLV.availableWidth
            text: "Estudiante de Ingeniería Electrónica en Universidad Nacional de Ingenieria, Desarrollador del laboratorio virtual de robotica industrial \nPosee Aspiraciones de Maestria en Robotica en el exterior"
            font.bold: true
            font.family: "Courier"
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Label.Wrap
            font.pixelSize: 14

              }

        Label {
            width: dialogLV.availableWidth
            text: "Este trabajo Monografico fue inspirado en la oficina de Unidad de Proyectos de Electrónica de la Facultad de Electrotecnia y computación en el año 2017 bajo la dirección del Master Alejandro Mendez T."
            font.family: "Courier"
            font.bold: true
            wrapMode: Label.Wrap
            font.pixelSize: 14
            horizontalAlignment: Text.AlignJustify
              }
            }
}
