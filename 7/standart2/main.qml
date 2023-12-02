import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: win
    minimumWidth: 360
    width: 360
    height: 640
    visible: true
    title: "PasswordPage"

    background: Rectangle {
        anchors.fill: parent
        color: 'white'
    }

    TextField {
        id: passwordField
        visible: false
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.centerIn: parent
        anchors.margins: 20
        spacing: 20

        Text {
            text: "Enter your password:"
            font.pixelSize: 16
            Layout.alignment: Qt.AlignCenter
            Layout.topMargin: 30
        }

        Rectangle {
            color: "transparent"
            Layout.preferredWidth: parent.width * 0.8
            Layout.preferredHeight: 50
            Layout.alignment: Qt.AlignCenter

            Row {
                spacing: 6
                anchors.centerIn: parent
                Repeater {
                    model: 6
                    Label {
                        width: 20
                        height: 20
                        font.pixelSize: 36
                        text: "*"
                        Layout.alignment: Qt.AlignCenter
                        color: index < passwordField.text.length ? "black" : "lightgrey"
                    }
                }
            }
        }

        GridLayout {
            id: keypad
            width: parent.width
            columns: 3
            rows: 4

            Repeater {
                model: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "", "0", "C"]
                Button {
                    text: modelData
                    onClicked: {
                        if (text === "C") {
                            passwordField.text = "";
                        }else {
                            passwordField.text += text;
                        }
                    }
                    Layout.fillWidth: true
                    Layout.preferredHeight: 50
                }
            }
        }
    }


}
