*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/po/homepage.robot

*** Keywords ***
Go to HomePage
        homepage.Go To HomePage
        homepage.Verify Page Loaded