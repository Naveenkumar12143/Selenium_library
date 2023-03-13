*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
closingbrowser
    open browser    https://www.google.com/     chrome
    maximize browser window
    sleep    3

    open browser    https://www.Amazon.com/       chrome
    maximize browser window
    sleep    3

    # close browser    # (closing the latest browser)
    close browser

*** Keywords ***


