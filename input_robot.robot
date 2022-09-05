*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Url}  https://google.com
${browser}  chrome

*** Test Cases ***
Inputbox
    Open Browser    ${Url}   ${browser}
    maximize browser window
    sleep   2
    input text  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input       Amazon
    click button    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    clear element text  xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/div[1]/div/div[2]/input
    sleep   2
    input text  xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/div[1]/div/div[2]/input   Facebook
    click button    xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/div[1]/button
    Close Browser




*** Keywords ***






