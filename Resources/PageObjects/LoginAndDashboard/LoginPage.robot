*** Settings ***
Documentation  Login Page Object
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Enter valid username
    Input Text    //input[@name="username"]    admin
    Input Text    //input[@name="password"]    @dm1N
Enter invalid username
    Input Text    //input[@name="username"]    invalid
    Input Text    //input[@name="password"]    @dm1N
Click Login
    Click Element  //button[@class="js-login-submit login-submit login-flat-control login-clickable"]
Login to BMS
    Enter valid username
    Click Login
Wait for error message
    Wait Until Element Is Visible   //body/form[1]/div[11]/span[2]
