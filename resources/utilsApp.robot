*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome

*** Keywords ***
Begin Web Test
        Set Selenium Speed  0.5 seconds
        #open browser  about:blank  ${BROWSER}  ${None}  http://selenium-hub:4444/wd/hub #if you will work local and docker
        open browser  about:blank  ${BROWSER}  #if you will work local without docker , make it active
        Maximize Browser Window

End Web Test
        Close Browser