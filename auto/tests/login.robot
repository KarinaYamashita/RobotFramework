*** Settings ***
Documentation    Validar tela de login
Resource          ../../main.robot
Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador

*** Variables ***
${inválido}    inválido


*** Test Cases ***

Cenário 1: Fazer login com sucesso
    [Documentation]    Validar tela de login com sucesso
    [Tags]    login_sucesso
    Dado que estou na tela de login
    Quando preencho os campos username e password corretamente
    Então serei direcionado para a tela de dashboard

Cenário 2: Fazer login com usuários inválido
    [Documentation]    Validar tela de login informando usuário inválido
    [Tags]    login_invalido    user_invalido
    Dado que estou na tela de login
    Quando preencho o campo username    inválido
    E preencho o campo password    válido
    Então deve apresentar o alerta de erro "Epic sadface: Username and password do not match any user in this service"

Cenário 3: Fazer login com senha inválida
    [Documentation]    Validar tela de login informando senha inválida
    [Tags]    login_invalido    senha_invalida
    Dado que estou na tela de login
    Quando preencho o campo username   válido
    E preencho o campo password    inválido
    Então deve apresentar o alerta de erro "Epic sadface: Username and password do not match any user in this service"


Cenário 4: Fazer login com usuário bloqueado
    [Documentation]    Validar tela de login informando senha inválida
    [Tags]    login_invalido    senha_invalida
    Dado que estou na tela de login
    Quando preencho o campo username com "locked_out_user"
    E preencho o campo password    válido
    Então deve apresentar o alerta de erro "Epic sadface: Sorry, this user has been locked out."
