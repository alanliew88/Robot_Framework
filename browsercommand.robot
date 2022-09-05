*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Testcase1
    Open browser    https://testautomationpractice.blogspot.com/       chrome
    maximize browser window

    sleep   3

    go to   https://google.com

    go back

    close browser
