*** Settings ***
Resource    ../../../main.robot
Library    String

*** Keywords ***
E deve ter um botão continuar comprando 
    Element Should Be Visible   ${Cart_info.continue_btn}
E um botão de finalizar a compra
    Element Should Be Visible   ${Cart_info.checkout_btn}

Dado que estou no carrinho
    Dado que estou na home da aplicação
    Quando clico no ícone carrinho

Quando clico em 
    [Arguments]    ${btn}
    Wait Until Element Is Visible    ${btn}
    Click Element    ${btn}
Então sou redirecionado para home
    Dado que estou na home da aplicação
    Então deve ser exibida a lista com os itens adicionados    ${product_name}    6

Então sou redirecionado para adress
    Wait Until Element Is Visible    ${Address.subheader}
    Element Should Be Visible    ${Address.subheader}
    Page Should Contain Element    ${Address.first_name}