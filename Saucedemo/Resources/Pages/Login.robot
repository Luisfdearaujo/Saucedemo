*** Settings ***
Documentation                Login Page

Library                        SeleniumLibrary

*** Variables ***
${Username}                    css: input[name="user-name"]
${Password}                    css: input[name="password"]
${LoginButton}                 css: input[name="login-button"]

*** Keywords ***
Login
    Input Text                ${Username}            standard_user
    Input Password            ${Password}            secret_sauce
    Click Element             ${LoginButton}
