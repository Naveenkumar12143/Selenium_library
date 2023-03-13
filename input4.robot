*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.google.com/
${browser}  chrome

*** Test Cases ***
InputBox
    open browser    ${url}      ${browser}
    maximize browser window
    sleep   5
    input text    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input     IPL 2023
    click button    Xpath://div[@class='FPdoLc lJ9FBc']//input[@name='btnK']
#    click button    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]
    clear element text    xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/div/div[2]/input
    input text    xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/div/div[2]/input     IPL 2022 WINNERS
    click button    xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/button
    sleep    2
#    close browser


*** Keywords ***


