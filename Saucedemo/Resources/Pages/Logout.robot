*** Settings ***
Documentation                Logout Page

Library                        SeleniumLibrary

*** Variables ***
${MenuButton}                 css: button[id="react-burger-menu-btn"]
${LogoutLink}                 css: a[id="logout_sidebar_link"]

*** Keywords ***
Logout
    Click Element                ${MenuButton}   
    Click Element                ${LogoutLink} 