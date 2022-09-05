*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${url}  https://agoda.com
${browser}  chrome

*** Test Cases ***
Testcase1-OpenBrowser
    open browser    ${url}  ${browser}
    close browser

Testcase2-RightNavigation
    open browser    ${url}  ${browser}
    title should be     Agoda Official Site | Free Cancellation & Booking Deals | Over 2 Million Hotels
    close browser

Testcase3-Textboxenabled
    open browser    ${url}  ${browser}
    title should be     Agoda Official Site | Free Cancellation & Booking Deals | Over 2 Million Hotels
    wait until element is visible   xpath://*[@id="SearchBoxContainer"]/div[1]/div/div[2]/div/div/div[1]/div/div/input

    close browser
Testcase4-Inputtext
    open browser    ${url}  ${browser}
    title should be     Agoda Official Site | Free Cancellation & Booking Deals | Over 2 Million Hotels
    wait until element is visible   xpath://*[@id="SearchBoxContainer"]/div[1]/div/div[2]/div/div/div[1]/div/div/input
    input text  xpath://*[@id="SearchBoxContainer"]/div[1]/div/div[2]/div/div/div[1]/div/div/input  kampar
    click button    xpath://*[@id="SearchBoxContainer"]/div[2]/button
    close browser

Testcase5-waitradiobutton
    open browser    ${url}  ${browser}
    title should be     Agoda Official Site | Free Cancellation & Booking Deals | Over 2 Million Hotels
    wait until element is visible   xpath://*[@id="SearchBoxContainer"]/div[1]/div/div[2]/div/div/div[1]/div/div/input
    input text  xpath://*[@id="SearchBoxContainer"]/div[1]/div/div[2]/div/div/div[1]/div/div/input  kampar
    click button    xpath://*[@id="SearchBoxContainer"]/div[2]/button
    sleep   3
    wait until element is enabled   xpath://*[@id="searchPageLeftColumn"]/div[2]/div[1]/div[2]/ul/li[3]/span
    close browser

Testcase6-checkbox
    open browser    ${url}  ${browser}
    title should be     Agoda Official Site | Free Cancellation & Booking Deals | Over 2 Million Hotels
    wait until element is visible   xpath://*[@id="SearchBoxContainer"]/div[1]/div/div[2]/div/div/div[1]/div/div/input
    input text  xpath://*[@id="SearchBoxContainer"]/div[1]/div/div[2]/div/div/div[1]/div/div/input  kampar
    click button    xpath://*[@id="SearchBoxContainer"]/div[2]/button
    sleep   3
    wait until element is enabled   xpath://*[@id="searchPageLeftColumn"]/div[2]/div[1]/div[2]/ul/li[3]/span
    click element    xpath://*[@id="searchPageLeftColumn"]/div[2]/div[1]/div[2]/ul/li[1]/span/span[2]/span/span

    close browser



*** Keywords ***
