*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/locators.py


*** Keywords ***
Open my browser
    [Arguments]     ${site_url}     ${browser}
    Open Browser    ${site_url}     ${browser}
#    Maximize Browser Window

Click registration link
    Click Element    ${link_reg}

Enter firstName
    [Arguments]     ${firstName}
    Wait Until Element Is Visible    ${txt_first_name}
    Input Text    ${txt_first_name}    ${firstName}

Enter lastName
    [Arguments]     ${lastName}
    Input Text    ${txt_last_name}    ${lastName}

Enter phone
    [Arguments]     ${phone}
    Input Text  ${txt_phone_number}     ${phone}

Enter email
    [Arguments]     ${email}
    Input Text  ${txt_email}     ${email}
    
Enter address1
    [Arguments]     ${add1}
    Input Text  ${txt_add1}     ${add1}
    
Enter city
    [Arguments]     ${city}
    Input Text  ${txt_city}     ${city}
    
Enter state
    [Arguments]     ${state}
    Input Text  ${txt_state}     ${state}
    
Enter postal code
    [Arguments]     ${pcode}
    Input Text  ${txt_post_code}     ${pcode}

Select country
    [Arguments]     ${country}
    Select From List By Label  ${drp_country}     ${country}

Enter username
    [Arguments]     ${username}
    Input Text  ${txt_username}     ${username}

Enter password
    [Arguments]     ${pwd}
    Input Text  ${txt_password}     ${pwd}

Enter confirm password
    [Arguments]     ${c_pwd}
    Input Text  ${txt_confirm_password}     ${c_pwd}
    
Click submit button
    Click Element  ${btn_submit} 
    
Verify successful registration
    Page Should Contain    Thank you for registering.
    Sleep    2