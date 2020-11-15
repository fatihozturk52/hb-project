*** Settings ***
Documentation  HomePage Test Cases
Resource  ../resources/utilsApp.robot
Resource  ../resources/homepageApp.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Verify Hepsiburada Homepage
    homepageApp.Go to HomePage