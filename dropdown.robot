*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}  http://demostore.supersqa.com
${browser}  chrome



*** Test Cases ***
Testcase1-dropdown
    open browser    ${url}  ${browser}
    select from list by value    orderby     popularity
    close browser

*** Keywords ***

