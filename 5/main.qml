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

    property int dur: 800
    property double op: 0.3

    ColumnLayout{
        id: column
        anchors.fill:parent
        spacing: myMargin

        states:[
            State{
                name:"start"
                PropertyChanges {
                    target: btn1
                    opacity: 1;
                }
                PropertyChanges {
                    target: btn2
                    opacity: 1;
                }
                PropertyChanges {
                    target: btn3
                    opacity: 1;
                }
                PropertyChanges {
                    target: back
                    opacity: 0;
                }
                PropertyChanges {
                    target: header
                    btext: "Header";
                }
                PropertyChanges {
                    target: content
                    btext: "Content";
                }
            },
            State{
                name:"item1"
                PropertyChanges {
                    target: btn1
                    opacity: 1;
                }
                PropertyChanges {
                    target: btn2
                    opacity: op;
                }
                PropertyChanges {
                    target: btn3
                    opacity: op;
                }
                PropertyChanges {
                    target: back
                    opacity: 1;
                }
                PropertyChanges {
                    target: header
                    btext: "Header 1";
                }
                PropertyChanges {
                    target: content
                    btext: "Item 1 content";
                }
            },
            State{
                name:"item2"
                PropertyChanges {
                    target:btn1
                    opacity: op;
                }
                PropertyChanges {
                    target: btn2
                    opacity: 1;
                }
                PropertyChanges {
                    target: btn3
                    opacity: op;
                }
                PropertyChanges {
                    target: back
                    opacity: 1;
                }
                PropertyChanges {
                    target: header
                    btext: "Header 2";
                }
                PropertyChanges {
                    target: content
                    btext: "Item 2 content";
                }
            },
            State{
                name:"item3"
                PropertyChanges {
                    target: btn1
                    opacity: op;
                }
                PropertyChanges {
                    target: btn2
                    opacity: op;
                }
                PropertyChanges {
                    target: btn3
                    opacity: 1;
                }
                PropertyChanges {
                    target: back
                    opacity: 1;
                }
                PropertyChanges {
                    target: header
                    btext: "Header 3";
                }
                PropertyChanges {
                    target: content
                    btext: "Item 3 content";
                }
            }
        ]
        state:"start"
        transitions:[
            Transition {
                from: "start"
                to: "item1"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item2"
                to: "item1"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item3"
                to: "item1"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "start"
                to: "item2"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item1"
                to: "item2"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item3"
                to: "item2"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "start"
                to: "item3"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item1"
                to: "item3"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item2"
                to: "item3"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item1"
                to: "start"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item2"
                to: "start"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            },
            Transition {
                from: "item3"
                to: "start"
                PropertyAnimation{targets: [btn1, btn2, btn3, back]; properties: "opacity"; duration:dur}
            }
        ]
        Comp{
            id:header
            btext: "Header"
            color: "lightgray"
            Layout.minimumHeight: parent.height/9
            Layout.minimumWidth: parent.width
            Image{
                id: back
                width: 30
                height: 30
                source: "./Images/back.png"
                anchors.verticalCenter: parent.verticalCenter
                x: 10
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        column.state = "start"
                    }
                }

            }
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
                color: "lightgray"
                Layout.minimumWidth: parent.width/3
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        column.state = "item1"
                    }
                }
            }
            Comp{
                id:btn2
                btext: "Item 2"
                color: "lightgray"
                Layout.minimumWidth: parent.width/3-2*myMargin2
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        column.state = "item2"
                    }
                }
            }
            Comp{
                id:btn3
                btext: "Item 3"
                color: "lightgray"
                Layout.minimumWidth: parent.width/3
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        column.state = "item3"
                    }
                }
            }
        }
    }

}
