*** Settings ***
Library     SeleniumLibrary
#robot -d Results test_cases
#robot -d Results keyword_sans_argument.robot


*** Variables ***
${URL}          https://admin-demo.nopcommerce.com/
${BROWSER}      chrome


*** Test Cases ***
login Test
    ${titre}    Lancer le navigateur    ${URL}    ${BROWSER}
    Log    titre
    Input Text    id:Email    admin@yourstore.com
    Input Password    id:Password    admin
    Click Button    xpath://button[@type="submit"]


*** Keywords ***
Lancer le navigateur
    [Arguments]    ${URL1}    ${BROWSER1}
    Open Browser    ${URL1}    ${BROWSER1}
    Maximize Browser Window
    ${titre_page}    Get Title
    RETURN    ${titre_page}
