*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Run Login Scenario
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Open Browser    https://www.saucedemo.com/    chrome
    Input Text    id:user-name    ${USERNAME}
    Input Text    id:password     ${PASSWORD}
    Click Button  id:login-button
    Sleep    2s
    Capture Page Screenshot
    Close Browser
