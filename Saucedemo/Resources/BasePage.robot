*** Settings ***       
Documentation            Main Project Page

Library                        SeleniumLibrary

Resource                      ../Resources/Pages/Login.robot
Resource                      ../Resources/Pages/BuyProduct.robot  
Resource                      ../Resources/Pages/Logout.robot

*** Variables ***

${BASEURL}                https://www.saucedemo.com/
${ENVIRONMENT}            cert
${BROWSER}                edge
${TIMEOUT}                30
${LONGTIMEOUT}            60
${BROWSERHEIGHT}          900
${BROWSERWIDTH}           1440

*** Keywords ***
Start Session
    Open Browser                    ${BASEURL}                ${BROWSER}
    Set Selenium Implicit Wait      ${TIMEOUT} 
    Set Window Size                 ${BROWSERWIDTH}           ${BROWSERHEIGHT}   
    #Accept FID Cookies
                             
Close Session
    Capture Page Screenshot
    Close Browser   