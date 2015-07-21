import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2

ApplicationWindow
{
    id:window
    title: qsTr("TCPmessenger v0.1 (Alpha)")
    width: 640
    height: 480
    visible: true

    function gotoRegister()
    {
        var myComponent = Qt.createComponent("Register.qml");
        if (myComponent.status == Component.Ready)
        {
            var registerQml = myComponent.createObject(window);
        }
    }

    MainForm
    {
        id:form
        anchors.fill:parent

        FontLoader{id:font_yekan; source:"qrc:/BYekan.ttf"}
        FontLoader{id:font_arial; source:"qrc:/arial.ttf"}

        Rectangle
        {
            id:root
            anchors.fill: parent
            color:"#4c84b6"

            Item
            {
                id:splash
                width:parent.width*2/3
                height:parent.height/4
                anchors.horizontalCenter: parent.horizontalCenter
                y:parent.height/3
                scale: 0

                Behavior on scale
                {
                    SpringAnimation
                    {
                        spring:2
                        damping:.2
                    }
                }

                Behavior on y
                {
                    NumberAnimation
                    {
                        id:y_animation
                        easing.type:Easing.OutExpo
                        duration:1
                    }
                }

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
                    color:"white" //eceff1
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
                        y_animation.duration=2000
                        splash_timer2.running=true
                    }
                }

                Timer
                {
                    id:splash_timer2
                    interval:2000
                    running:false
                    repeat:false
                    onTriggered:
                    {
                        parent.y/=3
                        splash_timer3.running=true
                    }
                }

                Timer
                {
                    id:splash_timer3
                    interval:2000
                    running:false
                    repeat:false
                    onTriggered:
                    {
                        login_form.opacity=1
                    }
                }
            }

            Item
            {
                id:login_form
                width:splash.width*0.75
                height:parent.height/2
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height/9
                opacity:0

                Behavior on opacity
                {
                    NumberAnimation
                    {
                        id:opacity_animation
                        easing.type:Easing.OutExpo
                        duration:1500
                    }
                }

                Item
                {
                    id:row_username
                    width:parent.width
                    height:parent.height/3

                    Text
                    {
                        id:text_username
                        anchors.right:parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        font.family:font_yekan.name
                        font.pixelSize: parent.height/3
                        text:"نام کاربری:"
                        color:"#eceff1"
                    }

                    TextField
                    {
                        id:field_username
                        anchors.left:parent.left
                        width:parent.width*0.9-text_username.implicitWidth
                        height:parent.height/2
                        anchors.verticalCenter: parent.verticalCenter
                        horizontalAlignment: Text.AlignHCenter
                        placeholderText: "username"
                        font.family:font_arial.name
                        font.pixelSize: height/2
                        KeyNavigation.backtab: button_register
                        KeyNavigation.up: button_register
                        KeyNavigation.tab: field_password
                        KeyNavigation.down: field_password

                        onTextChanged:
                        {
                            DataBase.loginUserName=text
                        }
                    }
                }

                Item
                {
                    id:row_password
                    width:parent.width
                    height:parent.height/3
                    anchors.top:row_username.bottom

                    Text
                    {
                        id:text_password
                        anchors.right:parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        font.family:font_yekan.name
                        font.pixelSize: parent.height/3
                        text:"رمز عبور :"
                        color:"#eceff1"
                    }

                    TextField
                    {
                        id:field_password
                        anchors.left:parent.left
                        width:parent.width*0.9-text_username.implicitWidth
                        height:parent.height/2
                        anchors.verticalCenter: parent.verticalCenter
                        horizontalAlignment: Text.AlignHCenter
                        placeholderText: "********"
                        font.family:font_arial.name
                        font.pixelSize: height/2
                        echoMode:TextInput.Password
                        KeyNavigation.backtab: field_username
                        KeyNavigation.up: field_username
                        KeyNavigation.tab: button_login
                        KeyNavigation.down: button_login

                        onTextChanged:
                        {
                            DataBase.loginPassword=text
                        }
                    }
                }

                Item
                {
                    id:row_buttons
                    width:parent.width
                    height:parent.height/3
                    anchors.top:row_password.bottom

                    Rectangle
                    {
                        id:button_login
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
                                parent.y+=button_login_shadow.height
                                button_login_shadow.y=button_login_shadow.height*-1
                            }
                            onReleased:
                            {
                                parent.y-=button_login_shadow.height
                                button_login_shadow.y=button_login.height
                                DataBase.doLogin()
                            }
                        }

                        Rectangle
                        {
                            id:button_login_shadow
                            y:parent.height
                            width:parent.width
                            height:parent.height/10
                            color:"#3d6a92"
                        }

                        Text
                        {
                            id:button_login_text
                            anchors.centerIn: parent
                            font.family: font_yekan.name
                            font.pixelSize:parent.height/2
                            text:"ورود"
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
                                gotoRegister()
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
    }
}
