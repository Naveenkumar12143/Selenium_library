*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Mouseaction
    open browser    https://testautomationpractice.blogspot.com/        chrome
#    maximize browser window
    open context menu    xpath://button[@onclick='myFunction()']
    sleep    3
    double click element    xpath://button[normalize-space()='Copy Text']
    sleep    3
    close browser