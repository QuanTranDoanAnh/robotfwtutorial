*** Settings ***
Library    SeleniumLibrary
Resource    ./HeaderPage.robot

*** Variables ***
${search_result}    results for

*** Keywords ***
Verify Search Results
    Page Should Contain    ${search_result} ${search_text}

Select product condition
    Mouse Over    xpath://div[@class="srp-controls__resize-display"]/span/button
    Sleep    3s
    Click Element    xpath://div[@class="srp-controls__resize-display"]/span/button/span
    Click Element    xpath://div[@class="srp-controls__resize-display"]/span/span/ul/li[2]

#Select delivery options