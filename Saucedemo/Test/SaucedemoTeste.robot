*** Settings ***
Documentation                Demo end to end

Resource            ../Resources/BasePage.robot

Test Setup        Start Session
Test Teardown     Close Session

***** Test Cases ***
Teste 
    Login
    Buy Product
    Logout