*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TestCase1
    Open browser    https://testautomationpractice.blogspot.com/        chrome
    maximize browser window
    Click button    xpath://*[@id="HTML9"]/div[1]/button
    sleep   3
    #handle alert    accept / dismiss
    #wait until element is visible  xpath://*[@id="demo"]

    alert should be present     Press a button!
    #verify the text / string is same
    ${respond}      Get text    xpath://*[@id="demo"]
    log to console      ${respond}
    Should be equal as strings  ${respond}     You pressed OK!
