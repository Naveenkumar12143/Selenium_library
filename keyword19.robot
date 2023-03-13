*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}     https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm/practice%20from
${url2}     https://www.google.com/
${browser}      chrome

*** Test Cases ***
practiceform
    open browser    ${url1}      ${browser}
    maximize browser window

    set selenium speed    1 second
    input text    xpath://input[@name='firstname']      python
    input text    xpath://input[@name='lastname']       robot framework

    # By using lunchingbrowser keywords
    lunchingbrowser     ${url2}      ${browser}
#    inputingvalues


*** Keywords ***
lunchingbrowser
    [Arguments]     ${weburl}   ${webbrowser}
    open browser    ${weburl}       ${webbrowser}
    maximize browser window
    set selenium speed    1 second

#inputingvalues
#    input text    xpath://input[@name='firstname']      Naveen
#    input text    xpath://input[@name='lastname']       kumar
    close browser



