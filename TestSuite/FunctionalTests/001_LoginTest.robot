*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary
Resource  ../../Resources/Setup/BMS_Setup.robot
Resource  ../../Resources/PageObjects/LoginAndDashboard/LoginPage.robot
Resource  ../../Resources/PageObjects/LoginAndDashboard/DashboardPage.robot
Test Setup  Start TestCase
Test Teardown  Finish TestCase
*** Variables ***


*** Test Cases ***
001_TC: Verify login as admin
    [Tags]   Smoke
    Login to BMS
    Wait for dashboard elements to load

002_TC: Verify login with invalid username
    [Tags]  Regression
    Enter invalid username
    Click Login
    Wait for error message
*** Keywords ***








