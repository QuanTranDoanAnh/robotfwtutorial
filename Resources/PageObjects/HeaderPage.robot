*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${search_text}    robot
#@{search_text}    books    travel    robot    gifts
#&{search_text}    abc=books    bcd=travel
${SearchTextBox}    xpath://*[@id="gh-ac"]
${SearchButton}    xpath://*[@id="gh-btn"]
${AdvancedSearchLink}    //*[@id="gh-as-a"]

*** Keywords ***
Input Search Text and Click Search
    [Arguments]    ${search_text}
    Input Text    ${SearchTextBox}    ${search_text}
    Press Keys    ${SearchButton}    RETURN

Click on Advanced Search Link
    Click Element    ${AdvancedSearchLink}