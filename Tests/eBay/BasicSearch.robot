*** Settings ***
Documentation    Basic Search Functionality
Resource    ../../Resources/CommonFunctionality.robot
#Resource    ../../Resources/eBay_UserDefinedKeywords.robot
Resource    ../../Resources/PageObjects/HeaderPage.robot
Resource    ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup    CommonFunctionality.Start TestCase
Test Teardown    CommonFunctionality.Finish TestCase
*** Variables ***



*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]    This test case verify the basic search
    [Tags]    Functional
    
    HeaderPage.Input Search Text and Click Search    robot
    SearchResultsPage.Verify Search Results    robot

Verify advanced search functionality
    [Documentation]    This test case verify the advanced search
    [Tags]    Functional

    HeaderPage.Click on Advanced Search Link

*** Keywords ***