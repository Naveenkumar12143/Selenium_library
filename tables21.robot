*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Table
    open browser    https://testautomationpractice.blogspot.com/        chrome
    maximize browser window
    set selenium speed    1 second
    ${rows}     get element count    xpath://table[@name='BookTable']/tbody/tr
    ${columns}      get element count    xpath://table[@name='BookTable']/tbody/tr/th

    log to console      ${rows}
    log to console      ${columns}
    close browser

