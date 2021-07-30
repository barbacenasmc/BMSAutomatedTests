*** Settings ***
Documentation     A test suite with a single test for Log In to the BMS
Library           SeleniumLibrary
Library           OperatingSystem

*** Variables ***

*** Keywords ***

Select Import Germplasm action
    # Trigger the Import germplasm action
    Wait Until Element Is Visible    //span[contains(text(), 'Actions')]  timeout=20
    Click Element   //span[contains(text(), 'Actions')]
    Wait Until Element Is Visible   //span[contains(text(), 'Import germplasm')]
    Click Element   //span[contains(text(), 'Import germplasm')]

Select file to upload
    # Make sure the view is Germplasm Manager
    Wait Until Element Is Visible   //h1[contains(text(), ' Germplasm Manager ')]
    Choose File     //input[@id='importFile']   ${EXECDIR}${/}Resources${/}OtherFiles${/}GermplasmImportTemplate.xls
    Click Element    //body/ngb-modal-window/div/div/jhi-germplasm-import/div[3]/button[2]

Verify if import germplasm screen 1 displays
    Wait Until Element Is Visible  //body/ngb-modal-window/div/div/jhi-germplasm-import-basic-details/div[1]/h4/span/span
    Element Should Be Visible  //body/ngb-modal-window/div/div/jhi-germplasm-import-basic-details/div[1]/h4/span/span
    Element Should Be Visible  //body/ngb-modal-window/div/div/jhi-germplasm-import-basic-details/div[2]/div[1]/h3/span
    Element Should Be Visible  //body/ngb-modal-window/div/div/jhi-germplasm-import-basic-details/div[2]/div[2]/h3/span
    Click Element    //body/ngb-modal-window/div/div/jhi-germplasm-import-basic-details/div[3]/button[2]

Verify if inventory screen displays
    # Check if "Inventory" screen title is present
    Wait Until Element Is Visible  //body/ngb-modal-window/div/div/jhi-germplasm-import-inventory/div[2]/div/h3/span
    Element Should Be Visible  //body/ngb-modal-window/div/div/jhi-germplasm-import-inventory/div[2]/div/h3/span
    # Select Confirm Transactions checkbox
    Click Element  //body/ngb-modal-window/div/div/jhi-germplasm-import-inventory/div[2]/div/form/div[7]/div/div
    # Select Next button
    Click Element   //body/ngb-modal-window/div/div/jhi-germplasm-import-inventory/div[3]/button[2]

Verify if review screen displays
    # Check if "Review" screen title is present
    Wait Until Element Is Visible  //body/ngb-modal-window/div/div/jhi-germplasm-import-review/div[2]/div/h3/span
Save germplasm
    # Click Save button
    Click Element  //body/ngb-modal-window/div/div/jhi-germplasm-import-review/div[3]/button[2]
    # Click Confirmation button
    Wait Until Element Is Visible  //body/ngb-modal-window[2]/div/div/jhi-modal-confirm/jhi-modal/div/div[3]/button[2]
    Click Element  //body/ngb-modal-window[2]/div/div/jhi-modal-confirm/jhi-modal/div/div[3]/button[2]

Verify if saving new germplasm succeeds
    Wait Until Element Is Visible  //body/jhi-main/div/section/jhi-germplasm-manager/section/div/section[1]/div/jhi-alert/div

Save imported List
    Wait Until Element Is Visible   //ngb-modal-window/div/div/jhi-germplasm-list-creation/div[2]/div/div[1]/div[3]/p-tree/div/ul/p-treenode[2]/li[2]/div/span[2]/span
    Click Element   //ngb-modal-window/div/div/jhi-germplasm-list-creation/div[2]/div/div[1]/div[3]/p-tree/div/ul/p-treenode[2]/li[2]/div/span[2]/span
    # Enter list name
    Input Text  //input[@name="name"]   Import List
    # Enter description
    Input Text  //input[@name="description"]   Breeding List
    # Enter notes
    Input Text  //body/ngb-modal-window/div/div/jhi-germplasm-list-creation/div[2]/div/div[2]/form/div[5]/div/textarea  This is an automated import
    # Click Save button
    Click Element   //body/ngb-modal-window/div/div/jhi-germplasm-list-creation/div[3]/button[2]

Verify if saving new list succeeds
    Wait Until Element Is Visible   //body/jhi-main/div/section/jhi-germplasm-manager/section/div/section[1]/div/jhi-alert/div

