*** Settings ***
Resource    ../../../main.robot

*** Variables ***
${BROWSER}  Chrome
${URL}  https://www.saucedemo.com/v1/
${USERNAME}  standard_user
${PASSWORD}  secret_sauce

*** Keywords ***
Abrir Navegador
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Fechar Navegador
    Close Browser

Gerar dados
    Debug
    #Utilizar a faker para gerar massa de dados

Fazer Login
    Dado que estou na tela de login
    Quando preencho o campo username    válido
    E preencho o campo password         válido
    Click Button    ${login.botao_login}

 Acessar menu
     [Arguments]    ${menu}    ${element}
     Fazer Login
     Wait Until Element Is Visible    ${menu}    10s
     Click Element    ${menu}
     Wait Until Element Is Visible   ${element}    30s
    