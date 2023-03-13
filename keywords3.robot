*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.python.org/
${browser}      chrome

*** Test Cases ***
Google
    insidegoogle


*** Keywords ***
insidegoogle
    open browser    ${url}      ${browser}
    maximize browser window
    sleep    5
    close browser