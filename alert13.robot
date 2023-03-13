*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
alertwindow
    open browser    https://testautomationpractice.blogspot.com/        chrome
    click button    xpath://button[@onclick='myFunction()']
    sleep    3
    # press the ok button!
    handle alert    accept

    # press the cancle button!
    handle alert    dismiss


    # verify the text on the alert window
    alert should be present    Press a button!

    # verify the text is not there in alert window
    alert should not be present     Press a button!