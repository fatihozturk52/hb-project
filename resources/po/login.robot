*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Focus Giriş Yap Button
    Mouse Over  id=myAccount

Click Giriş Yap Button
    Element Should Be Visible  id=login
    Click Element   id=login

Login Page Click Giriş Yap Toggle Switch Click
    Wait Until Page Contains Element  css=div:nth-of-type(1) > ._2q4oJzGUsyLIOBhRdWWO9D
    click element    css=div:nth-of-type(1) > ._2q4oJzGUsyLIOBhRdWWO9D

Login Page Enter The E-posta adresi
    [Arguments]  ${USERNAME}
    Wait Until Page Contains Element  id=txtUserName
    input text  id=txtUserName  ${USERNAME}

Login Page Enter The Şifre
    [Arguments]  ${PASSWORD}
    Wait Until Page Contains Element  id=txtPassword
    input text  id=txtPassword  ${PASSWORD}

Login Page Click Giriş Yap Buton
    Wait Until Page Contains Element  id=btnLogin
    click element    id=btnLogin

Verify Login Account
    Wait Until Element Contains    class=sf-OldMyAccount-1k66b    fatih ozturk
