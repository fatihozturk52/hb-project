*** Settings ***
Library  DebugLibrary
Documentation  Profil Test Cases
Resource  ../resources/utilsApp.robot
Resource  ../resources/searchApp.robot
Resource  ../resources/homepageApp.robot
Resource  ../resources/loginApp.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Homepage Search Product Create Basket
    homepageApp.Go to HomePage
    searchApp.Product Search Create Basket    ${SEARCH_VALUE}

Homepage Login to Search Product Create Basket
    homepageApp.Go to HomePage
    loginApp.Login    ${USERNAME}  ${PASSWORD}
    searchApp.Product Search Create Basket    ${SEARCH_VALUE}
    searchApp.Clear Basket