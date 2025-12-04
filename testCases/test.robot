*** Settings ***
Resource    ../resources/resources.robot
Suite Teardown    Close Browser


*** Variables ***

*** Keywords ***

*** Test Cases ***
DEMOBLAZE_TEST
    Sign Up
    Close Browser
    Log In
    Close Browser
    Log Out
    Close Browser
    Add Item To The Cart
    Close Browser
    Make An Order And Payment
    Close Browser