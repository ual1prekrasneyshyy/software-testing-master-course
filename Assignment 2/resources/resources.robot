*** Settings ***
Library    SeleniumLibrary
Variables   ./locators.py
Variables   ./testData.py

*** Keywords ***
Sign Up
    Open Browser    ${baseUrl}      Chrome
    Wait until page contains element    ${signUpButton}     timeout=100     error=signUpButtonNotFound
    Sleep   10s
    Click element   ${signUpButton}
    Wait until page contains element    ${signUpUsernameField}     timeout=100     error=usernameField
    Sleep   5s
    Input Text      ${signUpUsernameField}      ${username}
    Input Password      ${signUpPasswordField}      ${password}
    Sleep   5s
    Click Element   ${signUpFromSubmitButton}
    Sleep   2s

Log In
    Open Browser    ${baseUrl}      Chrome
    Wait until page contains element    ${loginButton}     timeout=100     error=loginButtonNotFound
    Sleep   10s
    Click element   ${loginButton}
    Wait until page contains element    ${signUpUsernameField}     timeout=100     error=usernameField
    Sleep   5s
    Input Text      ${loginUsernameField}      ${username}
    Input Password      ${loginPasswordField}      ${password}
    Sleep   5s
    Click Element   ${loginFormSubmitButton}
    Sleep   2s

Close Browser
    Close All Browsers

