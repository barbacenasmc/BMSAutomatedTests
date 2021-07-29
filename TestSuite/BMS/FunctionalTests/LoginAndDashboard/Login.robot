*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/PageObjects/LoginPage.robot

Test Setup  Start TestCase
Test Teardown  Finish TestCase
*** Variables ***


*** Test Cases ***
Verify login as admin
    [documentation]  Login test
    [tags]  Smoke

    Enter valid username
    Click Login
    Page Should Contain  Crop
    Page Should Contain  Program
    Click Element  xpath:/html/body/jhi-main/div/section/jhi-program/section/div[1]/div[1]/form/div[1]/div[1]/ng-select2/span/span[1]/span/span[1]
    Input Text  /html/body/span/span/span[1]/input  maize
    Click Element  /html/body/jhi-main/div/section/jhi-program/section/div/div[1]/form/div[2]/div[1]/ng-select2/span/span[1]/span
    Input Text  /html/body/span/span/span[1]/input  SHIELA PROGRAM

