*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
speedtest

    open browser    https://tutorialspoint.com/selenium/selenium_automation_practice.htm/practice%20from    chrome
    maximize browser window
    ${time}=    get selenium timeout
    log to console    ${time}

    set selenium timeout    10 seconds       # dipendes on user giving time
    # wait until page contains    Selenium - Automation Practice Form

    # if you can change anything it not pass the test case
     wait until page contains    Selenium - Automation Practice %*%**$% Form        # defult it takes 5 seconds


    input text      firstname   Naveen
    input text      lastname    kumar

    # Selecting radio buttons
    select radio button     sex     Male
    select radio button     exp     5

    close browser

