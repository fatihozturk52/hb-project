*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../resources/po/search.robot

*** Keywords ***
Product Search Create Basket
    [Arguments]  ${SEARCH_VALUE}
    search.Enter The Product Search Bar    ${SEARCH_VALUE}
    search.Click Search Button
    search.Verify Search Value
    search.Click Product
    search.Verify Pruduct Detail to Product Name
    search.Product Create Basket
    search.Same Product Different Company Create Basket
    search.Close The Repair Package Popup
    search.Click Basket
    search.Verify Basket
    search.Verify Product Company Name

Clear Basket
    search.Onboarding Shut Down
    search.Clear Basket

Login To Product Search Create Basket