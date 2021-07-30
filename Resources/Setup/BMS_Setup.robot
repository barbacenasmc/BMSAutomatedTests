*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CROP_SELECTED}     testdata
${PROGRAM_SELECTED}     NEW PROGRAM
#${BASE_URL}  https://bms-centos-1.leafnode.io/ibpworkbench/controller/auth/login
${BASE_URL}  http://34.68.27.82/ibpworkbench/controller/auth/login

*** Keywords ***
Start TestCase
    Open Browser  ${BASE_URL}  chrome
    Maximize Browser Window

Finish TestCase
    Close Browser
