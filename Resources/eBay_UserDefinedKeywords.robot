*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Search Results
    Input Text    xpath://*[@id="gh-ac"]    mobile
    Press Keys    xpath://*[@id="gh-btn"]    RETURN
    Page Should Contain    results for mobile

Filter results by condition
    Mouse Over    //*[@id="nid-tbw-3"]/button/span
    Sleep    3s
    Mouse Down    //*[@id="nid-tbw-3"]/span/ul/li[2]
    Click Element    //*[@id="nid-tbw-3"]/span/ul/li[2]

Verify filter results
    Element Should Contain    //*[@class="carousel__snap-point srp-carousel-list__item srp-multi-aspect__item--applied"]/div/a/div    New

