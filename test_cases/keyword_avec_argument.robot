*** Settings ***
Library     SeleniumLibrary
#robot -d Results test_cases
#robot -d Results keyword_avec_argument.robot


*** Variables ***
${URL1}         https://admin-demo.nopcommerce.com/
${BROWSER1}     chrome
${URL2}         https://google.com
${BROWSER2}     chrome


*** Test Cases ***
login Test
    Lancer le navigateur    ${URL1}    ${BROWSER1}
    Input Text    id:Email    admin@yourstore.com
    Input Password    id:Password    admin
    Click Button    xpath://button[@type="submit"]

Search google
    Lancer le navigateur    ${URL2}    ${BROWSER2}


*** Keywords ***
Lancer le navigateur
    [Arguments]    ${URL_SITE}    ${NAVIGATEUR}
    Open Browser    ${URL_SITE}    ${NAVIGATEUR}
    Maximize Browser Window
