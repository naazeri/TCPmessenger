#pragma once
#include <QObject>

class DataBase : public QObject
{
	Q_OBJECT
	/* Login Propertes */
	Q_PROPERTY(QString loginUserName READ loginUserName WRITE setLoginUserName NOTIFY loginUserNameChanged)
	Q_PROPERTY(QString loginPassword READ loginPassword WRITE setLoginPassword NOTIFY loginPasswordChanged)

	/* Signup Propertes */
	Q_PROPERTY(QString signupName READ signupName WRITE setSignupName NOTIFY signupNameChanged)
	Q_PROPERTY(QString signupFamily READ signupFamily WRITE setSignupFamily NOTIFY signupFamilyChanged)
	Q_PROPERTY(QString signupMobile READ signupMobile WRITE setSignupMobile NOTIFY signupMobileChanged)
	Q_PROPERTY(QString signupUserName READ signupUserName WRITE setSignupUserName NOTIFY signupUserNameChanged)
	Q_PROPERTY(QString signupPassword READ signupPassword WRITE setSignupPassword NOTIFY signupPasswordChanged)
	Q_PROPERTY(QString isOk READ isOk WRITE setIsOk NOTIFY isOkChanged)

public:
	explicit DataBase(QObject *parent = 0);

	QString loginUserName();
	QString loginPassword();
	QString signupName();
	QString signupFamily();
	QString signupMobile();
	QString signupUserName();
	QString signupPassword();
	QString isOk();

	void setLoginUserName(QString userName);
	void setLoginPassword(QString password);
	void setSignupName(QString name);
	void setSignupFamily(QString family);
	void setSignupMobile(QString mobile);
	void setSignupUserName(QString userName);
	void setSignupPassword(QString password);
	void setIsOk(QString ok);

private:
	QString theLoginUserName, theLoginPassword, theSignupName,
	theSignupFamily, theSignupMobile, theSignupUserName,
	theSignupPassword, theIsOk;

signals:
	void loginUserNameChanged();
	void loginPasswordChanged();
	void signupNameChanged();
	void signupFamilyChanged();
	void signupMobileChanged();
	void signupUserNameChanged();
	void signupPasswordChanged();
	void isOkChanged();

public slots:
	void doLogin();
	void doRegister();
	void sendLoginUserNameChanged(QString userName);
	void sendLoginPasswordChanged(QString password);
	void sendSignupNameChanged(QString name);
	void sendSignupFamilyChanged(QString family);
	void sendSignupMobileChanged(QString mobile);
	void sendSignupUserNameChanged(QString userName);
	void sendSignupPasswordChanged(QString password);
	void sendIsOkChanged(QString ok);

};
