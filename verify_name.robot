*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}  https://shopee.com
${browser}  chrome


*** Test Cases ***
Testcase1
    Open Browser    ${url}  ${browser}
    close browser

Testcase2
    Open Browser    ${url}  ${browser}
    wait until page contains    ${url}
    maximize browser window
    close browser

Testcase3
    Open Browser    ${url}  ${browser}
    wait until page contains    ${url}
    maximize browser window
    title should be     Shopee Malaysia | Free Shipping Across Malaysia
    click button    xpath://*[@id="modal"]/div[1]/div[1]/div/div[3]/div[1]/button
    sleep   2
    Press Keys  none    ESC

    wait until element is visible    dom:document.querySelector("#main > div > div._193wCc._3cVWns > div.home-page > shopee-banner-popup-stateful").shadowRoot.querySelector("div > div > div > div > div")
    click element   dom:document.querySelector("#main > div > div._193wCc._3cVWns > div.home-page > shopee-banner-popup-stateful").shadowRoot.querySelector("div > div > div > div > div")
    ${input_txt}    set variable    xpath://input[@placeholder='Search for products, brands and shops']
    element should be enabled   ${input_txt}
    element should be visible   ${input_txt}
    sleep   3
    input text  xpath://input[@placeholder='Search for products, brands and shops']     apple
    click button    xpath://*[@id="main"]/div/div[2]/div[1]/div[2]/div/div[1]/div[1]/button













*** Keywords ***
