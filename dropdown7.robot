*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://tutorialspoint.com/selenium/selenium_automation_practice.htm/practice%20from
${browser}      chrome

*** Test Cases ***
dropdown
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    1seconds

    # selecting from dropdown list
    select from list by label   continents      Australia
    select from list by index   continents      5

#    close browser


*** Keywords ***

