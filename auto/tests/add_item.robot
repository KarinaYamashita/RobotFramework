*** Settings ***
Documentation    Validar tela de login
Resource          ../../main.robot
Suite Setup       Initial Config default
Suite Teardown    Fechar Navegador

*** Variables ***
${inválido}    inválido


*** Test Cases ***

Cenário 1: Validação inserção item a sacola
    [Documentation]    Validar a inserção de itens a sacola utilizando os itens apresentados na home
    [Tags]    adicao_item
    Dado que estou na página do produto
    Quando clico em “ADD TO CARD” de um produto
    E o contador do carrinho deverá ser 1
    E o botão “REMOVE” deverá ser exibido no produto

# Cenário 2: Validação da visualização do item
#     [Documentation]    Validar a visualização do detalhamento do item ao ser redirecionado a página do produto
#     [Tags]    adicao_item
#     Dado que estou na home da aplicação
#     Quando clico em um item
#     Então sou redirecionado para página do produto
#     E visualizo a descrição do produto

# Cenário 3: Validação da adição de itens no carrinho
#     [Documentation]    Validar a exibição dos itens adicionados ao carrinho
#     [Tags]    adicao_item
#     Dado que foram adicionados itens no carrinho
#     Quando clico no ícone carrinho
#     Então deve ser exibida a lista com os itens adicionados
#     E o contador de itens deve refletir o número de itens exibidos
