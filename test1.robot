*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Google
    open browser    https://www.google.com/    chrome
    maximize browser window
    sleep    10
    close browser

*** Keywords ***
