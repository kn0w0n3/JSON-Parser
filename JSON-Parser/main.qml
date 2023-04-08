import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 1200
    height: 700
    title: qsTr("JSOn Parser")

    //Signal and slot connections to get data from C++ classes to the QML interface
    Connections{
        target: mainController

        onSelectedFileDataToQml:{
            textAreaMainDataWin.text += JSONFileData + "\n";
        }
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 1200
        height: 700
        color: "#000000"

        Rectangle {
            id: rectangle1
            x: 217
            y: 77
            width: 778
            height: 440
            color: "#00ffffff"
            border.color: "#ffffff"

            TextArea {
                id: textAreaMainDataWin
                x: 0
                y: 0
                width: 778
                height: 440
                color: "#ffffff"
                text: qsTr("")
            }
        }

        Text {
            id: logoText
            x: 505
            y: 8
            width: 190
            height: 33
            color: "#ffffff"
            text: qsTr("JSON Parser")
            font.pixelSize: 34
        }

        Button {
            id: button
            x: 217
            y: 532
            text: qsTr("Select File")

            onClicked: {
                mainController.selectFile();
            }
        }

        Rectangle {
            id: rectangle2
            x: 323
            y: 536
            width: 670
            height: 32
            color: "#00ffffff"
            border.color: "#ffffff"

            Text {
                id: element1
                x: 0
                y: 0
                width: 670
                height: 32
                text: qsTr("Text")
                font.pixelSize: 12
            }
        }

        Button {
            id: button1
            x: 217
            y: 593
            text: qsTr("Parse")
        }
    }
}
