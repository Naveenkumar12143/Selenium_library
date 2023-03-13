*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tablevalidation
    open browser    https://testautomationpractice.blogspot.com/        chrome
    maximize browser window
    ${rows}     get element count    xpath://table[@name='BookTable']/tbody/tr
    ${columns}  get element count    xpath://table[@name='BookTable']/tbody/tr/th

    log to console      ${rows}
    log to console      ${columns}

    ${data}     get text    xpath://table[@name='BookTable']/tbody/tr[2]/td[1]
    ${data2}     get text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]


    log to console      ${data}
    log to console      ${data2}

    table column should contain     xpath://table[@name='BookTable']       1   BookName
    table row should contain        xpath://table[@name='BookTable']      5   Mukesh
    table cell should contain       xpath://table[@name='BookTable']    5   3   Selenium
    table header should contain    xpath://table[@name='BookTable']     BookName

    close browser