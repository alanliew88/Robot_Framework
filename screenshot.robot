*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
testcase1
    Open browser        https://trevo.my       chrome
    maximize browser window
    capture element screenshot  xpath://*[@id="whytrevo"]/section/div/div/div[1]/div/div[2]/div/div[1]/figure/img   car.png
    capture page screenshot     trevo.png
    sleep   3

    #3 types of scrolling
    #Type 1
    #execute javascript  window.scrollTo(0,1000)

    #Type 2
    #this below command can scroll to bottom
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    sleep   2

    #Type 3
    execute javascript  window.scrollTo(0,-document.body.scorllHeight)
    sleep   5
    scroll element into view       xpath://*[@id="jointrevo"]/div/div[1]/a/div/div[2]/div
    sleep   5
    close browser