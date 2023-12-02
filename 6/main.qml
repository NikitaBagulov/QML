import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2
Window {
 width: 360
 height: 640
 visible: true
 title: qsTr("StackView_test")

 property int defMargin:10

 StackView{
 id:stack_view
 anchors.fill: parent
 initialItem: page1
 }
     MyPage {
         id:page1
         backgroundColor: "red"
         buttonTextLeft: "To_Green"
         buttonTextRight: "To_Yellow"
        onButtonClickedLeft:{
         stack_view.replace(page1, page3)
        }
         onButtonClickedRight: {
         stack_view.replace(page1, page2)
         }
     }
     MyPage {
         id:page2
         visible: false
         backgroundColor: "yellow"
         buttonTextLeft: "To_Red"
         buttonTextRight: "To_Green"
         onButtonClickedLeft:{
          stack_view.replace(page2, page1)
         }
        onButtonClickedRight: {
            stack_view.replace(page2, page3)
         }
     }
     MyPage {
             id:page3
             visible: false
             backgroundColor: "green"
             buttonTextLeft: "To_Yellow"
             buttonTextRight: "To_Red"
             onButtonClickedLeft:{
              stack_view.replace(page3, page2)
             }
            onButtonClickedRight: {
                stack_view.replace(page3, page1)
             }
     }
}
