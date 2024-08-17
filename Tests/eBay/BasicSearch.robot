*** Settings ***
Documentation    Basic Search Functionality
Resource    ../../Resources/CommonFunctionality.robot
Resource    ../../Resources/eBay_UserDefinedKeywords.robot

Test Setup    CommonFunctionality.Start TestCase
Test Teardown    CommonFunctionality.Finish TestCase
*** Variables ***



*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]    This test case verify the basic search
    [Tags]    Functional
    
    
    eBay_UserDefinedKeywords.Verify Search Results
    eBay_UserDefinedKeywords.Filter results by condition
    eBay_UserDefinedKeywords.Verify filter results

*** Keywords ***