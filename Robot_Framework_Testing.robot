*** Settings ***
Library           Selenium2Library

*** Variables ***
${TxtUsername}    id=txtUsername
${TxtPassword}    id=txtPassword
${BtnLogin}       id=btnLogin

*** Test Cases ***
TC_NavigateToURL
    [Documentation]    This test case is to navigate user to URL https://opensource-demo.orangehrmlive.com/
    Open Browser    https://opensource-demo.orangehrmlive.com/    firefox
    Sleep    2s

TC_Login
    [Documentation]    This test case used to valid login
    [Setup]
    Input Text    ${TxtUsername}    Admin
    Input Text    ${TxtPassword}    admin123
    Click Button    ${BtnLogin}
