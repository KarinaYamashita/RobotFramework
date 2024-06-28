*** Settings ***
Resource    ../../../main.robot

*** Keywords ***
Dado que estou na tela de login
    Wait Until Element Is Visible    ${login.botao_login}    10s

Quando preencho o campo username
    [Arguments]   ${type}
    IF  '${type}' == 'inválido'
        Input Text    ${login.campo_username}    admin
    ELSE IF  '${type}' == 'locked'
        Input Text    ${login.campo_username}    ${USERNAME.locked}
    ELSE IF  '${type}' == 'problem'
        Input Text    ${login.campo_username}    ${USERNAME.problem}
    ELSE
        Input Text    ${login.campo_username}    ${USERNAME.default}
    END

E preencho o campo password
    [Arguments]   ${status}
    IF  '${status}' == 'inválido'
        Input Text    ${login.campo_passwd}    1234
    ELSE
        Input Text    ${login.campo_passwd}    ${PASSWORD}
    END

Então deve apresentar o alerta de erro "${mensagem}"
    Click Button    ${login.botao_login}
    Wait Until Element Is Visible    ${login.msg_erro}    10s
    ${msg}    Get Text    ${login.msg_erro}
    Should Be Equal    '${mensagem}'    '${msg}'

Quando preencho os campos username e password corretamente
    Quando preencho o campo username    válido
    E preencho o campo password         válido
    Click Button    ${login.botao_login}

Então serei direcionado para a tela da home
    ${status}    Run Keyword And Return Status   Wait Until Element Is Visible    ${Products.label}    10s
    IF  ${status}
        Log    Usuário logado com sucesso
    ELSE
        Fail   Usuário não foi logado
    END