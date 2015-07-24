import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2

MainForm
{
    id:form
    anchors.fill:parent

    FontLoader{id:font_yekan; source:"qrc:/BYekan.ttf"}
    FontLoader{id:font_arial; source:"qrc:/arial.ttf"}

    Rectangle
    {
        id:root
        anchors.fill:parent
        color:"#4c84b6"

        Text
        {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top:parent.top
            anchors.topMargin: height/3
            font.family: font_yekan.name
            font.pixelSize: parent.height/9
            text:"ثبت نام"
            color:"White"
        }

        Item
        {
            width:parent.width/2
            height:parent.height/2
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
                    color:"#eceff1"
                }

                TextField
                {
                    id:field_firstName
                    anchors.left:parent.left
                    width:parent.width*0.9-text_username.implicitWidth
                    height:parent.height/1.5
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
                    color:"#eceff1"
                }

                TextField
                {
                    id:field_lastName
                    anchors.left:parent.left
                    width:parent.width*0.9-text_username.implicitWidth
                    height:parent.height/1.5
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
                    color:"#eceff1"
                }

                TextField
                {
                    id:field_username
                    anchors.left:parent.left
                    width:parent.width*0.9-text_username.implicitWidth
                    height:parent.height/1.5
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
                    color:"#eceff1"
                }

                TextField
                {
                    id:field_phone
                    anchors.left:parent.left
                    width:parent.width*0.9-text_username.implicitWidth
                    height:parent.height/1.5
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
                    color:"#eceff1"
                }

                TextField
                {
                    id:field_password
                    anchors.left:parent.left
                    width:parent.width*0.9-text_username.implicitWidth
                    height:parent.height/1.5
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

        Item
        {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top:col.bottom
            anchors.topMargin: parent.height/24
            width:col.width
            height: parent.height/9

            Rectangle
            {
                id:button_cancel
                width:parent.width/3
                height:parent.height*2/3
                y:(parent.height-height)/2
                anchors.right:parent.right
                anchors.rightMargin:parent.width/9
                color:"#5c98cd"

                MouseArea
                {
                    anchors.fill:parent
                    onPressed:
                    {
                        parent.y+=button_cancel_shadow.height
                        button_cancel_shadow.y=button_cancel_shadow.height*-1
                    }
                    onReleased:
                    {
                        parent.y-=button_cancel_shadow.height
                        button_cancel_shadow.y=button_cancel.height
                        form.destroy()
                    }
                }

                Rectangle
                {
                    id:button_cancel_shadow
                    y:parent.height
                    width:parent.width
                    height:parent.height/10
                    color:"#3d6a92"
                }

                Text
                {
                    id:button_cancel_text
                    anchors.centerIn: parent
                    font.family: font_yekan.name
                    font.pixelSize:parent.height/2
                    text:"بازگشت"
                    color:"#eceff1"
                }
            }

            Rectangle
            {
                id:button_register
                width:parent.width/3
                height:parent.height*2/3
                y:(parent.height-height)/2
                anchors.left:parent.left
                anchors.leftMargin:parent.width/9
                color:"#5c98cd"

                MouseArea
                {
                    anchors.fill:parent
                    onPressed:
                    {
                        parent.y+=button_register_shadow.height
                        button_register_shadow.y=button_register_shadow.height*-1
                    }
                    onReleased:
                    {
                        parent.y-=button_register_shadow.height
                        button_register_shadow.y=button_register.height
                        DataBase.signupName=field_firstName.text
                        DataBase.signupFamily=field_lastName.text
                        DataBase.signupMobile=field_phone.text
                        DataBase.signupPassword=field_password.text
                        DataBase.signupUserName=field_username.text
                        DataBase.doRegister()
                    }
                }

                Rectangle
                {
                    id:button_register_shadow
                    y:parent.height
                    width:parent.width
                    height:parent.height/10
                    color:"#3d6a92"
                }

                Text
                {
                    id:button_register_text
                    anchors.centerIn: parent
                    font.family: font_yekan.name
                    font.pixelSize:parent.height/2
                    text:"ثبت نام"
                    color:"#eceff1"
                }
            }
        }
    }
}

