*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../resources/po/login.robot

*** Keywords ***
Login
    [Arguments]  ${USERNAME}  ${PASSWORD}
    login.Focus Giriş Yap Button
    login.Click Giriş Yap Button
    login.Login Page Click Giriş Yap Toggle Switch Click
    login.Login Page Enter The E-posta adresi    ${USERNAME}
    login.Login Page Enter The Şifre    ${PASSWORD}
    login.Login Page Click Giriş Yap Buton
    login.Verify Login Account