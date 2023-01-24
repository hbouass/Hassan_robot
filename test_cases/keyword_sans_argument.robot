*** Settings ***
Library     SeleniumLibrary
#robot -d Results test_cases
#robot -d Results keyword_sans_argument.robot


*** Variables ***
${URL}          https://admin-demo.nopcommerce.com/
${BROWSER}      chrome


*** Test Cases ***
login Test
    #Open Browser    ${URL}    ${BROWSER}
    #Maximize Browser Window
    Lancer le navigateur
    Input Text    id:Email    admin@yourstore.com
    Input Password    id:Password    admin
    Click Button    xpath://button[@type="submit"]


*** Keywords ***
Lancer le navigateur
    Open Browser    ${URL}    ${BROWSER}

    Maximize Browser Window
