*** Settings ***
Library    SeleniumLibrary
Variables   ./locators.py
Variables   ./testData.py


*** Variables ***


*** Keywords ***
Sign Up
    Open Browser    ${baseUrl}
    Maximize Browser Window
    Wait until page contains element    ${signUpButton}     timeout=100     error=signUpButtonNotFound
    Sleep   3s
    Click Element   ${signUpButton}
    Wait until page contains element    ${signUpUsernameField}     timeout=100     error=usernameFieldNotFound
    Sleep   3s
    Input Text      ${signUpUsernameField}      ${username}
    Input Password      ${signUpPasswordField}      ${password}
    Sleep   3s
    Click Element   ${signUpFromSubmitButton}
    Sleep   2s

Log In
    Open Browser    ${baseUrl}
    Maximize Browser Window
    Wait until page contains element    ${loginButton}     timeout=100     error=loginButtonNotFound
    Sleep   3s
    Click Element   ${loginButton}
    Wait until page contains element    ${signUpUsernameField}     timeout=100     error=usernameFieldNotFound
    Sleep   3s
    Input Text      ${loginUsernameField}      ${username}
    Input Password      ${loginPasswordField}      ${password}
    Sleep   3s
    Click Element   ${loginFormSubmitButton}
    Sleep   2s
    
Log Out
    Log In      # precondition
    Wait until page contains element    ${logoutButton}     timeout=100     error=loginButtonNotFound
    Sleep   3s
    Click Element   ${logoutButton}
    Sleep   2s

Add Item To The Cart
    Log In      # precondition
    Wait until page contains element    ${chooseCategoryButton}     timeout=100     error=chooseCategoryButtonNotFound
    Sleep   3s
    Click Element    ${chooseCategoryButton}   
    Wait until page contains element    ${chooseItemButton}     timeout=100     error=chooseItemButtonNotFound
    Sleep   3s
    Click Element    ${chooseItemButton}
    Wait until page contains element    ${addToCartButton}     timeout=100     error=addToCartButtonNotFound
    Sleep   3s
    Click Element    ${addToCartButton}
    Sleep   2s

Make An Order And Payment
    Log In
    Wait until page contains element    ${openCartButton}     timeout=100     error=openCartButtonNotFound
    Sleep   3s
    Click Element    ${openCartButton}
    Wait until page contains element    ${placeOrderButton}     timeout=100     error=placeOrderButtonNotFound
    Sleep   3s
    Click Element    ${placeOrderButton}
    Wait until page contains element    ${customerNameField}     timeout=100     error=customerNameFieldNotFound
    Sleep   3s
    Input Text      ${customerNameField}      ${customerName}
    Input Text      ${customerCountryField}      ${customerCountry}
    Input Text      ${customerCityField}      ${customerCity}
    Input Text      ${customerCreditCardNumberField}      ${customerCreditCardNumber}
    Input Text      ${customerCreditCardExpiryMonthField}      ${customerCreditCardExpiryMonth}
    Input Text      ${customerCreditCardExpiryYearField}      ${customerCreditCardExpiryYear}
    Sleep   4s
    Click Element    ${purchaseOrderButton}
    Sleep   2s


Close Browser
    Close All Browsers