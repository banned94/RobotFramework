*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot
Resource   ../resources/keywords.robot

*** Test Cases ***
Login With Multiple Users From List
    ${length}=    Get Length    ${CREDENTIALS}
    FOR    ${i}    IN RANGE    0    ${length}    2
        ${USERNAME}=    Set Variable    ${CREDENTIALS}[${i}]
        ${PASSWORD}=    Set Variable    ${CREDENTIALS}[${i + 1}]
        Run Login Scenario    ${USERNAME}    ${PASSWORD}
    END