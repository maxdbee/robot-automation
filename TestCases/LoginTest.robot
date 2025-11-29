*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/newtours/index.php
${user}     user
${pswd}     user


*** Test Cases ***
Verify login with valid credentials
    Open my browser    ${url}    ${browser}
    Enter username    ${user}
    Enter password    ${pswd}
    Click sign-in
    Verify successful login
    Close All Browsers