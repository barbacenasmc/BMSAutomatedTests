*** Settings ***
Documentation     A test suite with a single test for Log In to the BMS
Library           SeleniumLibrary
Library           OperatingSystem

Resource  ../../Resources/Setup/BMS_Setup.robot
Resource  ../../Resources/PageObjects/LoginAndDashboard/LoginPage.robot
Resource  ../../Resources/PageObjects/LoginAndDashboard/DashboardPage.robot
Resource  ../../Resources/PageObjects/ManageGermplasm/ImportGermplasmPage.robot
Resource  ../../Resources/PageObjects/ManageGermplasm/ManageGermplasmPage.robot

Suite Setup  Start TestCase
Suite Teardown  Finish TestCase

*** Variables ***

*** Test Cases ***
Import Germplasm Test
    [documentation]  Import germplasm test using template with complete details
    [tags]  Smoke

    # From LoginPage
    Login to BMS
    # From DashboardPage
    Wait for dashboard elements to load
    Search and Select Program
    Click Launch

    #From ManageGermplasmPage
    Wait for Manage Germplasm to load
    Select Import Germplasm action

    #From ImportGermplasmPage
    Select file to upload
    Verify if import germplasm screen 1 displays
    Verify if inventory screen displays
    Verify if review screen displays
    Save germplasm
    Verify if saving new germplasm succeeds
    Save imported List
    Verify if saving new list succeeds

*** Keywords ***

