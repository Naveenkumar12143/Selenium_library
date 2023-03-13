*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
speedtest
    ${speed}    get selenium speed
    log to console      ${speed}
    open browser    https://tutorialspoint.com/selenium/selenium_automation_practice.htm/practice%20from    chrome
    maximize browser window
    set selenium speed    3seconds

    input text      firstname   Naveen
    input text      lastname    kumar

    # Selecting radio buttons
    select radio button     sex     Male
    select radio button     exp     5

    close browser
    ${speed}    get selenium speed
    log to console      ${speed}





