*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://automationexercise.com/view_cart
Suite Teardown    Close Browser
*** Variables ***

*** Keywords ***
Click View Product 
    Click Button    //*[@id="cartModal"]/div/div/div[2]/p[2]/a/u"
Click Add to Cart
    Click Button    //*[@id="/html/body/section/div/div/div[2]/div[2]/div[2]/div/span/button"]

Click View Cart 
    Click Button    //*[@id="cartModal"]/div/div/div[2]/p[2]/a/u"

*** Test Cases ***
Test Locked out Login
    Click View Product
    Click Add to Cart
    Click View Cart
    Wait Until Page Contains    Blue Top