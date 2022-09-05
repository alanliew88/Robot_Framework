*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${URL}  https://google.com/


*** Test Cases ***
google
    openbrowser


testtwo
    Open Browser    ${URL}
    Close Browser

*** Keywords ***
Openbrowser
    Open Browser    ${URL}  ${browser}
MaximizeBrowserWindow
    maximize Browser Window
TimeSleep
    Sleep   10
CloseBrowser
    Close Browser








