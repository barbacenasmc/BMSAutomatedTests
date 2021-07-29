*** Settings ***

*** Variables ***

*** Keywords ***
Enter valid username
    Input Text    //input[@name="username"]    admin
    Input Text    //input[@name="password"]    @dm1N
Click Login
    Click Element  //button[@class="js-login-submit login-submit login-flat-control login-clickable"]
Login to BMS
    Enter valid username
    Click Login
