*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/locators.py


*** Keywords ***
Open my browser
    [Arguments]     ${site_url}     ${browser}
    Open Browser    ${site_url}     headless${browser}
    Maximize Browser Window
    
Enter username
    [Arguments]     ${username}
    Wait Until Element Is Visible    ${txt_login_userName}
    Input Text    ${txt_login_userName}    ${username}

Enter password
    [Arguments]     ${password}
    Input Text    ${txt_login_password}    ${password}
    
Click sign-in
    Click Element    ${btn_sign_in}

Verify successful login
    Sleep    2
    Title Should Be    Login: Mercury Tours
