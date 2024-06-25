*** Settings ***
Resource    ../../../main.robot

*** Variables ***
${BROWSER}  Chrome
${URL}  https://www.saucedemo.com/v1/
&{USERNAME}  
...  default=standard_user
...  locked=locked_out_user
...  problem=problem_user
${PASSWORD}    secret_sauce
${COUNTER}    0

*** Keywords ***
Abrir Navegador
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Fechar Navegador
    Close Browser

Initial Config ${user_type}
    Abrir Navegador
    Fazer Login    ${user_type}


Fazer Login
    [Arguments]    ${user_type}
    Dado que estou na tela de login
    Quando preencho o campo username    ${user_type}
    E preencho o campo password         válido
    Click Button    ${login.botao_login}

#  Acessar menu
#      [Arguments]    ${menu}    ${element}
#      Fazer Login
#      Wait Until Element Is Visible    ${menu}    10s
#      Click Element    ${menu}
#      Wait Until Element Is Visible   ${element}    30s
    