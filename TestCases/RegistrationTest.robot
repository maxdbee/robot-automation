*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot


*** Variables ***
${browser}  firefox
${url}  https://demo.guru99.com/test/newtours/index.php
${fname}    John
${lname}    Doe
${user}     user
${pswd}     user


*** Test Cases ***
Verify registration with valid credentials
    Open my browser    ${url}    ${browser}
    Click registration link
    Enter firstName    ${fname}
    Enter lastName    ${lname}
    Enter phone    5632563563256
    Enter email    nmnm@hd.com
    Enter address1    brown st 17
    Enter city    Vaasa
    Enter state    Pohjanmaa
    Enter postal code    5665
    Select country    FINLAND
    Enter username    ${user}
    Enter password    ${pswd}
    Enter confirm password    ${pswd}
    Click submit button
    Verify successful registration
    Close All Browsers

# Sequentially Execution
    # robot PageObjects\TestCases\
# Execution based on regex- all files starting with 'reg'
    # robot PageObjects\TestCases\reg*.robot
# Parallel execution- pip install robotframework-pabot