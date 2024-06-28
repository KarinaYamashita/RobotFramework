*** Settings ***
Documentation    Validar tela do carrinho
Resource          ../../main.robot
Test Setup       Initial Config default
Test Teardown    Fechar Navegador

*** Test Cases ***

Cenário 1: Validação página carrinho
    [Documentation]    Validar as informações mostradas na tela do carrinho
    [Tags]    adicao_item
    Dado que foram adicionados itens no carrinho
    Quando clico no ícone carrinho
    Então deve ser exibida a lista com os itens adicionados    ${product_name}    3
    E o contador de itens deve refletir o número de itens exibidos 3
    E deve ter um botão continuar comprando 
    E um botão de finalizar a compra

Cenário 2: Validação dos botões de redirecionamento - Botão "continue shopping"
    [Documentation]    Validar o redirecionamento para a home utilizando o Botão "continue shopping"
    [Tags]    adicao_item
    Dado que estou no carrinho
    Quando clico em     ${Cart_info.continue_btn}
    Então sou redirecionado para home

Cenário 3: Validação dos botões de redirecionamento - Botão “checkout”
    [Documentation]    Validar o redirecionamento para adress utilizando o Botão “checkout”
    [Tags]    adicao_item
    Dado que estou no carrinho
    Quando clico em     ${Cart_info.checkout_btn}
    Então sou redirecionado para adress