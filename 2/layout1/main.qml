import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12


Window {
    width: 900
    height: 100
    visible: true
    title: qsTr("Hello World")
    property int myMargin:1
    minimumWidth: parent
    RowLayout{
        id: cl
        spacing: myMargin
        anchors.fill:parent

        Comp{
            Layout.fillHeight: true
            Layout.alignment: Qt.AligtTop
        }
        Comp{
            Layout.fillHeight: true
            Layout.alignment: Qt.AligtTop
        }
        Comp{
            Layout.fillHeight: true
            Layout.alignment: Qt.AligtTop
        }
    }


}
