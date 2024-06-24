*** Settings ***
Resource    ../../../main.robot

*** Keywords ***
Dado que estou na home da aplicação
    Wait Until Element Is Visible    ${Products.label}

Quando clico em “ADD TO CARD” de um produto
    [Arguments]    ${produto}
    Click Button    ${produto}
E o contador do carrinho deverá ser ${item_number}
    Wait Until Element Is Visible    ${Cart.card_counter}    10s
    ${counter}    Get Text    ${Cart.card_counter}
    Should Be Equal    '${counter}'    '${item_number}'
E o botão “${btn_remove}” deverá ser exibido no produto
    Wait Until Element Is Visible    ${Products.btn_remove}    10s
    Debug
    ${btn_name}    Get Text    ${Products.btn_remove}
    Should Be Equal    '${btn_name}'    '${btn_remove}'

Quando clico em um item
    [Arguments]    ${produto}
    Wait Until Element Is Visible    ${produto}
    Click Element   ${produto}

Então sou redirecionado para página do produto
    Element Should Be Visible    ${Item.btn_back}

E visualizo a descrição do produto
   Element Should Be Visible    ${Item.btn_back}
   ${descricao}    Get Text    ${Item.item_description}
   Should Not Be Empty    ${descricao}
   Should Be Equal    '${descricao}'    'Get your testing superhero on with the Sauce Labs bolt T-shirt. From American Apparel, 100% ringspun combed cotton, heather gray with red bolt.'

Dado que foram adicionados itens no carrinho
    Dado que estou na home da aplicação
    Quando clico em “ADD TO CARD” de um produto    ${Products.product_btn_1}
    Quando clico em “ADD TO CARD” de um produto    ${Products.product_btn_2}
    Quando clico em “ADD TO CARD” de um produto    ${Products.product_btn_3}
Quando clico no ícone carrinho
    Click Element   ${Cart.your_cart}
Então deve ser exibida a lista com os itens adicionados
    Debug

E o contador de itens deve refletir o número de itens exibidos
    Debug