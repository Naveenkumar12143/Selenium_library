*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}     https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm/practice%20from
${url2}     https://www.google.com/
${browser}      chrome

*** Test Cases ***
practiceform
    # By using lunchingbrowser keywords
    ${pagetitle}    lunchingbrowser     ${url2}      ${browser}
    log to console      ${pagetitle}
    log    ${pagetitle}
#    inputingvalues


*** Keywords ***
lunchingbrowser
    [Arguments]     ${weburl}   ${webbrowser}
    open browser    ${weburl}       ${webbrowser}
    maximize browser window
    set selenium speed    2 seconds
    ${title}    get title
    [Return]        ${title}



inputingvalues
    input text    xpath://input[@name='firstname']      chintha
    input text    xpath://input[@name='lastname']       naveen kumar
    close browser

