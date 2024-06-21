*** Variables ***

&{login}    
...    botao_login=//*[@id="login-button"]
...    campo_username=//input[@id='user-name']
...    campo_passwd=//input[@id='password']
...    msg_erro=//h3[@data-test='error']

&{home}    
...    inventory_filter=//*[@id="inventory_filter_container"]/div