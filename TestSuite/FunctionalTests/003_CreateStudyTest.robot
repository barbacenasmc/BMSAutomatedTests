*** Settings ***
Documentation     A test suite with a single test for Log In to the BMS
Library           SeleniumLibrary
Library           OperatingSystem

Resource  ../../Resources/Setup/BMS_Setup.robot
Resource  ../../Resources/PageObjects/LoginAndDashboard/LoginPage.robot
Resource  ../../Resources/PageObjects/LoginAndDashboard/DashboardPage.robot
Resource  ../../Resources/PageObjects/ManageGermplasm/CreateStudyPage.robot
Resource  ../../Resources/PageObjects/ManageGermplasm/ManageStudiesPage.robot

Suite Setup  Start TestCase
Suite Teardown  Finish TestCase

*** Variables ***

*** Test Cases ***
Verify creation of new trial
    [documentation]  Verify creation of new trial
    [tags]  Smoke

    #From LoginPage
    Login to BMS

    #From DashboardPage
    Wait for dashboard elements to load
    Search and Select Program
    Click Launch

    #From ManageStudiesPage
    Wait for Manage Studies to load

    #From CreateStudyPage
    Open Create Study page
    Enter basic details
    Add PI_NAME to settings
    Save new study

*** Keywords ***

