*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Implicit wait

    open browser    https://tutorialspoint.com/selenium/selenium_automation_practice.htm/practice%20from    chrome
    maximize browser window
    ${wait}     get selenium implicit wait
    log to console   ${wait}

    set selenium implicit wait  10 seconds

    ${wait}     get selenium implicit wait
    log to console   ${wait}

    input text  name:firstname1   Naveen
    input text  name:lastname    kumar

    # Selecting radio buttons
    select radio button     sex     Male
    select radio button     exp     3

    close browser