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

Dado que estou na home da aplicação
    Wait Until Element Is Visible    ${Products.label}

Quando clico em “ADD TO CARD” de um produto
    [Arguments]    ${produto}
    Click Button    ${produto}

Dado que foram adicionados itens no carrinho
    Dado que estou na home da aplicação
    Quando clico em “ADD TO CARD” de um produto    ${Products.product_btn_1}
    Quando clico em “ADD TO CARD” de um produto    ${Products.product_btn_2}
    Quando clico em “ADD TO CARD” de um produto    ${Products.product_btn_3}
Quando clico no ícone carrinho
    Click Element   ${Cart.your_cart}

Então deve ser exibida a lista com os itens adicionados 
    [Arguments]    ${product_name}    ${qty}
    FOR    ${element}    IN    ${product_name}
        Exit For Loop If    ${COUNTER}==${qty}
        Log    ${element}
        Log    ${COUNTER} 
        Page Should Contain    ${product_name}[${COUNTER}] 
        ${COUNTER}    Evaluate    ${COUNTER}+1
    END       

E o contador de itens deve refletir o número de itens exibidos ${item_number}
    E o contador do carrinho deverá ser ${item_number}