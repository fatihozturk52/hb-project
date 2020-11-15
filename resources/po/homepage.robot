*** Settings ***
Documentation   HomePage
Library  SeleniumLibrary

*** Keywords ***
Go To HomePage
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains Element  class=Herousel_3