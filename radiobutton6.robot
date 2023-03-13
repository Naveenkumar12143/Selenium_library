*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://tutorialspoint.com/selenium/selenium_automation_practice.htm/practice%20from
${browser}      chrome

*** Test Cases ***
Checking radio buttons and check boxes
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    1seconds

    # Selecting radio buttons
    select radio button     sex     Male
    select radio button     exp     5


    # selecting the check boxes

    select checkbox     Manual Tester
    select checkbox     Automation Tester
    select checkbox     Selenium IDE
    select checkbox     Selenium Webdriver

    unselect checkbox       Manual Tester
    unselect checkbox       Selenium IDE

    sleep    5
    close browser

*** Keywords ***


