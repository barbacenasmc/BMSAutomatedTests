*** Settings ***
Documentation     A test suite with a single test for Log In to the BMS
Library           SeleniumLibrary
Resource  ../../../Resources/CommonFunctionality.robot
Resource  ../../../Resources/PageObjects/LoginPage.robot

Test Setup  Start TestCase
#Test Teardown  Finish TestCase

*** Variables ***

*** Test Cases ***
Import Germplasm Test
    Login to BMS
    # Select the current iframe so that we can locate the elements inside it.
    Wait Until Element Is Visible   //iframe
    Select Frame    //iframe
    Wait Until Page Contains Element   //body/jhi-main/div/section/jhi-program/section/div/div[1]/form/div[2]/div[1]/ng-select2  timeout=25
    # ${IsElementVisible}=  Run Keyword And Return Status    Element Should Be Visible   //span[contains(text(), ${PROGRAM_SELECTED})]
    # Run Keyword Unless    ${IsElementVisible}  Search and Select Program
    Search and Select Program
    Click Launch
    Wait for Manage Germplasm to Load
    Select Import Germplasm
    Select File to Upload


*** Keywords ***

Wait for Manage Germplasm to Load
    # Make sure the view is redirected to Germplasm Manager
    Wait Until Element Is Visible   //iframe
    Select Frame    //iframe
    Wait Until Element Is Visible   //h1[contains(text(), ' Germplasm Manager ')]
Select Import Germplasm
    # Trigger the Import germplasm action
    Wait Until Element Is Visible    //span[contains(text(), 'Actions')]  timeout=20
    Click Element   //span[contains(text(), 'Actions')]
    Wait Until Element Is Visible   //span[contains(text(), 'Import germplasm')]
    Click Element   //span[contains(text(), 'Import germplasm')]
Select File to Upload
    # Make sure the view is Germplasm Manager
    Wait Until Element Is Visible   //h1[contains(text(), ' Germplasm Manager ')]
    Choose File     //input[@id='importFile']   ${CURDIR}/GermplasmImportTemplate.xls
    Click Element    //body/ngb-modal-window/div/div/jhi-germplasm-import/div[3]/button[2]