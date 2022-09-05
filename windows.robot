*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
windowclose
    open browser    https://robotframework.org      chrome
    maximize browser window
    sleep   3
    click button    xpath://*[@id="app"]/div[3]/div/div[2]/div[2]/button
    click link      xpath://*[@id="app"]/div[3]/div/div[2]/div[2]/div/div[1]/div/a
    switch window   Robot Framework
    sleep   3
    close window