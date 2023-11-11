import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640;
    height: 800;
    visible: true;
    title: qsTr("Robot")
    id:win
    Block{
        id: block
        height: 200
        width: 200
        bcolor: "gray"
        anchors.centerIn: parent}
    Block{
        height: 100
        width: 100
        bcolor: "gray"
        anchors.bottom: block.top
        anchors.horizontalCenter: block.horizontalCenter
        Block{
          height: 10
          width:30
          bcolor:"green"
          anchors.top: parent.top
          anchors.left: parent.left
          anchors.topMargin: 10
          anchors.leftMargin: 10
        }
        Block{
          height: 10
          width:30
          bcolor:"green"
          anchors.top: parent.top
          anchors.right: parent.right
          anchors.topMargin: 10
          anchors.rightMargin: 10
        }
        Block{
            height: 10
            width: 50
            bcolor:"black"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 10
        }
    }
    Block{
        id: righthand
        height:300
        width:50
        bcolor:"gray"
        anchors.left: block.right
        anchors.top: block.top
    }
    Block{
        id: lefthand
        height:300
        width:50
        bcolor:"gray"
        anchors.right: block.left
        anchors.top: block.top
    }
    Block{
        height: 300
        width: 75
        bcolor:"gray"
        anchors.left: lefthand.right
        anchors.top: block.bottom
    }
    Block{
        height: 300
        width: 75
        bcolor:"gray"
        anchors.right: righthand.left
        anchors.top: block.bottom
    }


}
