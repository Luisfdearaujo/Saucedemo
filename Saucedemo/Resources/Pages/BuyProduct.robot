*** Settings ***
Documentation                Login Page

Library                        SeleniumLibrary

*** Variables ***
${AddBackpackToCart}           css: button[name="add-to-cart-sauce-labs-backpack"]
${ShoppingCart}                css: .shopping_cart_link
${CheckoutBtn}                 css: button[name="checkout"]
${FirstNameInput}              css: input[id="first-name"]
${LastNameInput}               css: input[id="last-name"]
${ZipCodeInput}                css: input[id="postal-code"]
${ContinueBtn}                 css: input[id="continue"]
${FinishBtn}                   css: button[id="finish"]
${BackHomeBtn}                 css: button[id="back-to-products"]

*** Keywords ***
Buy Product
    Click Element            ${AddBackpackToCart} 
    Click Element            ${ShoppingCart}
    Click Element            ${CheckoutBtn} 
    Input Text               ${FirstNameInput}     Luis
    Input Text               ${LastNameInput}      Araújo
    Input Text               ${ZipCodeInput}       1350
    Click Element            ${ContinueBtn}   
    Click Element            ${FinishBtn}  
    Click Element            ${BackHomeBtn} 


