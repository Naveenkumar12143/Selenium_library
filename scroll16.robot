*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
scrolltest
    open browser    https://en.wikipedia.org/wiki/India_national_cricket_team      chrome
#    maximize browser window
    sleep    3
#    execute javascript    window.scrollTo(0,1500)
#    scroll element into view    xpath:/html[1]/body[1]/div[3]/div[3]/div[5]/div[1]/div[14]/div[1]/a[1]/img[1]
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    sleep    3
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)
