*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot

*** Keywords ***
Open SauceDemo And Login
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    id:user-name    ${USERNAME}
    Input Text    id:password     ${PASSWORD}
    Click Button  id=login-button

Validate Login Result
    [Arguments]    ${USERNAME}
    IF    '${USERNAME}' == 'locked_out_user'
        Wait Until Page Contains    Epic sadface: Sorry, this user has been locked out.    timeout=5s
        Page Should Contain         Epic sadface: Sorry, this user has been locked out.
    ELSE
        Wait Until Page Contains Element    class:inventory_list    timeout=10s
        Page Should Contain Element         class:inventory_list
        Page Should Not Contain Element     class=error-button
    END

Close Browser Session
    Close Browser

Run Login Scenario
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Open SauceDemo And Login    ${USERNAME}    ${PASSWORD}
    Validate Login Result       ${USERNAME}
    Close Browser Session
