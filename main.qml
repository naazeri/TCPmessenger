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
        anchors.fill: parent

        FontLoader{id:font_yekan; source:"qrc:/BYekan.ttf"}
        FontLoader{id:font_arial; source:"qrc:/arial.ttf"}

        Rectangle
        {
            id:root
            anchors.fill:parent

            Item
            {
                width:parent.width/2
                height:parent.height*2/3
                anchors.centerIn:parent
                id:col

                Item
                {
                    id:row_firstName
                    width:parent.width
                    height:parent.height/5

                    Text
                    {
                        id:text_firstName
                        anchors.right:parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        font.family:font_yekan.name
                        font.pixelSize: parent.height/2
                        text:"نام:"
                    }

                    TextField
                    {
                        id:field_firstName
                        anchors.left:parent.left
                        width:parent.width*0.9-text_username.implicitWidth
                        height:parent.height*2/3
                        anchors.verticalCenter: parent.verticalCenter
                        horizontalAlignment: Text.AlignHCenter
                        placeholderText: "نام"
                        font.family:font_yekan.name
                        font.pixelSize: height/2
                        focus:true
                        KeyNavigation.backtab: field_password
                        KeyNavigation.up: field_password
                        KeyNavigation.tab: field_lastName
                        KeyNavigation.down: field_lastName
                    }
                }

                Item
                {
                    id:row_lastName
                    width:parent.width
                    height:parent.height/5
                    anchors.top:row_firstName.bottom

                    Text
                    {
                        id:text_lastName
                        anchors.right:parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        font.family:font_yekan.name
                        font.pixelSize: parent.height/2
                        text:"نام خانوادگی:"
                    }

                    TextField
                    {
                        id:field_lastName
                        anchors.left:parent.left
                        width:parent.width*0.9-text_username.implicitWidth
                        height:parent.height*2/3
                        anchors.verticalCenter: parent.verticalCenter
                        horizontalAlignment: Text.AlignHCenter
                        placeholderText: "نام خانوادگی"
                        font.family:font_yekan.name
                        font.pixelSize: height/2
                        KeyNavigation.backtab: field_firstName
                        KeyNavigation.up: field_firstName
                        KeyNavigation.tab: field_username
                        KeyNavigation.down: field_username
                    }
                }

                Item
                {
                    id:row_username
                    width:parent.width
                    height:parent.height/5
                    anchors.top:row_lastName.bottom

                    Text
                    {
                        id:text_username
                        anchors.right:parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        font.family:font_yekan.name
                        font.pixelSize: parent.height/2
                        text:"نام کاربری:"
                    }

                    TextField
                    {
                        id:field_username
                        anchors.left:parent.left
                        width:parent.width*0.9-text_username.implicitWidth
                        height:parent.height*2/3
                        anchors.verticalCenter: parent.verticalCenter
                        horizontalAlignment: Text.AlignHCenter
                        placeholderText: "username"
                        font.family:font_arial.name
                        font.pixelSize: height/2
                        KeyNavigation.backtab: field_lastName
                        KeyNavigation.up: field_lastName
                        KeyNavigation.tab: field_phone
                        KeyNavigation.down: field_phone
                    }
                }

                Item
                {
                    id:row_phone
                    width:parent.width
                    height:parent.height/5
                    anchors.top:row_username.bottom

                    Text
                    {
                        id:text_phone
                        anchors.right:parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        font.family:font_yekan.name
                        font.pixelSize: parent.height/2
                        text:"شماره تلفن :"
                    }

                    TextField
                    {
                        id:field_phone
                        anchors.left:parent.left
                        width:parent.width*0.9-text_username.implicitWidth
                        height:parent.height*2/3
                        anchors.verticalCenter: parent.verticalCenter
                        horizontalAlignment: Text.AlignHCenter
                        placeholderText: "09---------"
                        font.family:font_yekan.name
                        font.pixelSize: height/2
                        KeyNavigation.backtab: field_username
                        KeyNavigation.up: field_username
                        KeyNavigation.tab: field_password
                        KeyNavigation.down: field_password
                    }
                }

                Item
                {
                    id:row_password
                    width:parent.width
                    height:parent.height/5
                    anchors.top:row_phone.bottom

                    Text
                    {
                        id:text_password
                        anchors.right:parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        font.family:font_yekan.name
                        font.pixelSize: parent.height/2
                        text:"رمز عبور :"
                    }

                    TextField
                    {
                        id:field_password
                        anchors.left:parent.left
                        width:parent.width*0.9-text_username.implicitWidth
                        height:parent.height*2/3
                        anchors.verticalCenter: parent.verticalCenter
                        horizontalAlignment: Text.AlignHCenter
                        placeholderText: "********"
                        font.family:font_arial.name
                        font.pixelSize: height/2
                        echoMode:TextInput.Password
                        KeyNavigation.backtab: field_phone
                        KeyNavigation.up: field_phone
                        KeyNavigation.tab: field_firstName
                        KeyNavigation.down: field_firstName
                    }
                }
            }
        }
    }
}
