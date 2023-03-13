*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}  https://www.youtube.com/results?search_query=ind+vs+sl+2011+world+cup+final+full+highlights+hd/
${browser}  chrome

*** Test Cases ***
youtube
    open browser    ${url}      ${browser}
    maximize browser window
    sleep    15
    close browser


*** Keywords ***

