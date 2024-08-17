*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Search Results
    Input Text    xpath://*[@id="gh-ac"]    mobile
    Press Keys    xpath://*[@id="gh-btn"]    RETURN
    Page Should Contain    results for mobile

Filter results by condition
    Mouse Over    xpath://div[@class="srp-controls__resize-display"]/span/button
    Sleep    3s
    Click Element    xpath://div[@class="srp-controls__resize-display"]/span/button/span
    Click Element    xpath://div[@class="srp-controls__resize-display"]/span/span/ul/li[2]

Verify filter results
    Element Should Contain    //li[@class="carousel__snap-point srp-carousel-list__item srp-multi-aspect__item--applied"]/div/a/div    New

