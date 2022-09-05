*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
MouseAction
    Open browser    https://testautomationpractice.blogspot.com     chrome
    maximize browser window

    #right click
    open context menu    xpath://*[@id="HTML9"]/div[1]/button

    #double click
    double click element    xpath://*[@id="field2"]
    input text  xpath://*[@id="field2"]   hello world
    capture page screenshot     text.png

    sleep   5
    close browser