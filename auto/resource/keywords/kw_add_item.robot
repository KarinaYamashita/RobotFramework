*** Settings ***
Resource    ../../../main.robot

*** Keywords ***
Dado que estou na página do produto
    Wait Until Element Is Visible    ${Products.label}

Quando clico em “ADD TO CARD” de um produto
    Click Button    ${Products.first_product_btn}
E o contador do carrinho deverá ser ${item_number}
    Wait Until Element Is Visible    ${Products.card_counter}    10s
    ${counter}    Get Text    ${Products.card_counter}
    Should Be Equal    '${counter}'    '${item_number}'
E o botão “${btn_remove}” deverá ser exibido no produto
    Wait Until Element Is Visible    ${Products.btn_remove}    10s
    Debug
    ${btn_name}    Get Text    ${Products.btn_remove}
    Should Be Equal    '${btn_name}'    '${btn_remove}'