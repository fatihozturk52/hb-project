*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PRODUCT_NAME}
${COMPANYFIRST}
${COMPANYSECOND}

*** Keywords ***
Enter The Product Search Bar
    [Arguments]  ${SEARCH_VALUE}
    Wait Until Page Contains Element  css=[role=combobox]
    input text  css=[role=combobox] > input  ${SEARCH_VALUE}

Click Search Button
    Wait Until Page Contains Element    class=SearchBoxOld-buttonContainer
    Click Element   class=SearchBoxOld-buttonContainer

Verify Search Value
    Wait Until Element Contains    css=.keyword    ${SEARCH_VALUE}

Click Product
    ${PRODUCT_NAME}=  Get Text    css=li:nth-child(2) > div > a > div.product-detail > h3 > div > p
    click element    css=li:nth-child(2) > div > a > div.product-detail > h3 > div > p

Verify Pruduct Detail to Product Name
    Wait Until Element Contains    id=product-name    ${PRODUCT_NAME}

Product Create Basket
    Wait Until Page Contains Element    css=div.seller-container > span > span:nth-child(2)
    ${COMPANYFIRST}=  Get Text    css=div.seller-container > span > span:nth-child(2)
    click element    id=addToCart
    Reload Page

Same Product Different Company Create Basket
    Wait Until Page Contains Element    css=tr:nth-child(1) > td.shipping-and-campaigns > div.merchant-info > a.merchantStore.small
    ${COMPANYSECOND}=  Get Text    css=tr:nth-child(1) > td.shipping-and-campaigns > div.merchant-info > a.merchantStore.small
    click element    css=tr:nth-child(1) > td.form-area > div > form > button

Close The Repair Package Popup
    Wait Until Page Contains Element    css=#pcwrapper > div > i
    Click Element    css=#pcwrapper > div > i
    Reload Page

Click Basket
    Wait Until Page Contains Element    id=shoppingCart
    Click Element    id=shoppingCart

Verify Basket
    Wait Until Element Contains    css=div.basket_headerTop_15H0U > h1    Sepetim

Verify Product Company Name
    Log    ${COMPANYFIRST}
    Wait Until Element Contains    css=li:nth-child(1) > div > div > div.product_properties_2hkip > div.product_detail_2vvbg > div.merchant_name_1NA4w > span > a    ${COMPANYFIRST}
    Wait Until Element Contains    css=li:nth-child(2) > div > div > div.product_properties_2hkip > div.product_detail_2vvbg > div.merchant_name_1NA4w > span > a    ${COMPANYSECOND}

Onboarding Shut Down
    Click Element    css=div.onboarding_back_2zTkz.skip_2JiZQ

Clear Basket
    Click Element    css=li:nth-child(2) a > div > svg
    Click Element    css=li:nth-child(1) a > div > svg
