*** Settings ***
Documentation  Manage Germplasm Page Object
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Wait for Manage Germplasm to load
    # Make sure the view is redirected to Germplasm Manager
    Wait Until Element Is Visible   //iframe  timeout=50
    Select Frame    //iframe
    Wait Until Element Is Visible   //h1[contains(text(), ' Germplasm Manager ')]


