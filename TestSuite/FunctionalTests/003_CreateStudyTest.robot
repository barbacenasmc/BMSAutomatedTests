*** Settings ***
Documentation     A test suite with a single test for Log In to the BMS
Library           SeleniumLibrary
Library           OperatingSystem

Resource  ../../Resources/Setup/BMS_Setup.robot
Resource  ../../Resources/PageObjects/LoginAndDashboard/LoginPage.robot
Resource  ../../Resources/PageObjects/LoginAndDashboard/DashboardPage.robot
Resource  ../../Resources/PageObjects/ManageGermplasm/CreateStudyPage.robot
Resource  ../../Resources/PageObjects/ManageGermplasm/ManageStudyyPage.robot

Suite Setup  Start TestCase
Suite Teardown  Finish TestCase

*** Variables ***

*** Test Cases ***
Verify creation of new trial
    [documentation]  Verify creation of new trial
    [tags]  Smoke

    Login to BMS
    Wait for dashboard elements to load
    Search and Select Program
    Click Launch

    Wait for Manage Studies to load
    Open Create Study page
    Enter basic details
    Add PI_NAME to settings
    Save new study
*** Keywords ***

