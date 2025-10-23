*** Settings ***
Resource    ../resources/resources.robot
Suite Teardown    Close Browser


*** Variables ***


*** Keywords ***


*** Test Cases ***
DEMOBLAZE_TEST
    Sign Up
    Log In
    Log Out
    Add Item To The Cart
    Make An Order And Payment