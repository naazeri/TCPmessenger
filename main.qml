import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2

ApplicationWindow
{
    id:window
    title: qsTr("Hello World")
    width: 640
    height: 480
    visible: true

    MainForm
    {
        id:form
        anchors.fill:parent

        FontLoader{id:font_yekan; source:"qrc:/BYekan.ttf"}
        FontLoader{id:font_arial; source:"qrc:/arial.ttf"}

        Item
        {
            id:splash
            width:parent.width*2/3
            height:parent.height/4
            anchors.horizontalCenter: parent.horizontalCenter
            y:parent.height/3
            scale: 0

            Image
            {
                id:splash_image
                width:height
                height:parent.height
                sourceSize.width:width
                sourceSize.height:height
                source:"qrc:/Messenger-icon.png"
            }

            Text
            {
                id:splash_text
                anchors.right:parent.right
                anchors.verticalCenter: parent.verticalCenter
                font.family:font_arial.name
                font.pixelSize:parent.height*2/3
                text:"TCPM :)"
                color:"#212121"
            }

            Behavior on scale
            {
                SpringAnimation
                {
                    spring:2
                    damping:.2
                }
            }

            Timer
            {
                id:splash_timer
                interval:500
                running:true
                repeat:false
                onTriggered:
                {
                    parent.scale=1
                }
            }
        }

        Item
        {

        }
    }
}
