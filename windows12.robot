*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
windowsclose
    open browser    https://robotframework.org/     chrome
    maximize browser window
    sleep    4
    click link    xpath://a[normalize-space()='AppiumLibrary']
    sleep    4
    switch window    Robot Framework
    sleep    4
#    close window
#    sleep    4
#    close browser


