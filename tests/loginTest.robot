*** Settings ***
Documentation  Profil Test Cases
Resource  ../resources/utilsApp.robot
Resource  ../resources/loginApp.robot
Resource  ../resources/homepageApp.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Login for profile
    homepageApp.Go to HomePage
    loginApp.Login    ${USERNAME}  ${PASSWORD}