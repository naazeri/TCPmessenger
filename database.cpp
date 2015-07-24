#include "database.h"

DataBase::DataBase(QObject *parent) : QObject(parent)
{
	this->theSignupName = "";
    this->theSignupFamily = "";
}

/* Read */
QString DataBase::loginUserName()
{
	return theLoginUserName;
}

QString DataBase::loginPassword()
{
	return theLoginPassword;
}

QString DataBase::signupName()
{
	return theSignupName;
}

QString DataBase::signupFamily()
{
	return theSignupFamily;
}

QString DataBase::signupMobile()
{
	return theSignupMobile;
}

QString DataBase::signupUserName()
{
	return theSignupUserName;
}

QString DataBase::signupPassword()
{
	return theSignupPassword;
}

QString DataBase::isOk()
{
	return theIsOk;
}

/* Write */
void DataBase::setLoginUserName(QString userName)
{

}

void DataBase::setLoginPassword(QString password)
{

}

void DataBase::setSignupName(QString name)
{

}

void DataBase::setSignupFamily(QString family)
{

}

void DataBase::setSignupMobile(QString mobile)
{

}

void DataBase::setSignupUserName(QString userName)
{

}

void DataBase::setSignupPassword(QString password)
{

}

void DataBase::setIsOk(QString ok)
{

}

/* Slots */
void DataBase::doLogin()
{

}

void DataBase::doRegister()
{

}

void DataBase::sendLoginUserNameChanged(QString userName)
{

}

void DataBase::sendLoginPasswordChanged(QString password)
{

}

void DataBase::sendSignupNameChanged(QString name)
{

}

void DataBase::sendSignupFamilyChanged(QString family)
{

}

void DataBase::sendSignupMobileChanged(QString mobile)
{

}

void DataBase::sendSignupUserNameChanged(QString userName)
{

}

void DataBase::sendSignupPasswordChanged(QString password)
{

}

void DataBase::sendIsOkChanged(QString ok)
{

}

