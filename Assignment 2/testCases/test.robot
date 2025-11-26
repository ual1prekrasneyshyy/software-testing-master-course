*** Settings ***
Resource    ../resources/resources.robot
Suite Teardown    Close Browser


*** Variables ***
${CHROME_USERNAME}    ${username1}
${FIREFOX_USERNAME}    ${username2}
${YANDEX_USERNAME}    ${username3}


*** Keywords ***


*** Test Cases ***
DEMOBLAZE_TEST_CHROME
    [Tags]    chrome
    ${BROWSER}=    Set Variable    Chrome
    ${USERNAME_VARIABLE}=    Set Variable    ${CHROME_USERNAME}
    Sign Up
    Log In
    Log Out
    Add Item To The Cart
    Make An Order And Payment


DEMOBLAZE_TEST_YANDEX
    [Tags]    firefox
    ${BROWSER}=    Set Variable   Firefox
    ${USERNAME_VARIABLE}=    Set Variable    ${FIREFOX_USERNAME}
    Sign Up
    Log In
    Log Out
    Add Item To The Cart
    Make An Order And Payment


DEMOBLAZE_TEST_FIREFOX
    [Tags]    yandex
    ${BROWSER}=    Set Variable   Yandex
    ${USERNAME_VARIABLE}=    Set Variable    ${YANDEX_USERNAME}
    Sign Up
    Log In
    Log Out
    Add Item To The Cart
    Make An Order And Payment