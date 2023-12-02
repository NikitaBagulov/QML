import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.13

Window {
    width: 480
    height: 640
    visible: true
    title: qsTr("Layouts")

    property int myMargin:10
    property int myMargin2:5

    ColumnLayout{
        anchors.fill:parent
        spacing: myMargin
        Comp{
            id:header
            btext: "Header"
            color: "lightgrey"
            Layout.minimumHeight: parent.height/9
            Layout.minimumWidth: parent.width
        }
        Comp{
            id:content
            btext: "Content"
            border.width: 1
            border.color: "grey"
            Layout.minimumHeight: (parent.height/9)*7-2*myMargin
            Layout.minimumWidth: parent.width-2*myMargin
            Layout.alignment: Qt.AlignLeft
            Layout.leftMargin: myMargin
            Layout.rightMargin: myMargin

        }
        RowLayout{
            spacing: myMargin2
            Layout.minimumHeight: parent.height/9
            Comp{
                id:btn1
                btext: "Item 1"
                color: "lightgrey"
                Layout.minimumWidth: parent.width/3
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        btn1.opacity = 1;
                        header.btext = "Header 1";
                        content.btext = "Item 1 content";
                        btn2.opacity = 0.5;
                        btn3.opacity = 0.5;
                    }
                }
            }
            Comp{
                id:btn2
                btext: "Item 2"
                color: "lightgrey"
                Layout.minimumWidth: parent.width/3-2*myMargin2
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        btn2.opacity = 1;
                        header.btext = "Header 2";
                        content.btext = "Item 2 content";
                        btn1.opacity = 0.5;
                        btn3.opacity = 0.5;
                    }
                }
            }
            Comp{
                id:btn3
                btext: "Item 3"
                color: "lightgrey"
                Layout.minimumWidth: parent.width/3
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        btn3.opacity = 1;
                        header.btext = "Header 3";
                        content.btext = "Item 3 content";
                        btn2.opacity = 0.5;
                        btn1.opacity = 0.5;
                    }
                }
            }
        }
    }

}
