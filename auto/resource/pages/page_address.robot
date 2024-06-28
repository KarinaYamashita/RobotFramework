*** Variables ***

&{Address}
...    subheader=(//div[contains(.,'Checkout: Your Information')])[3]
...    first_name=(//input[contains(@type,'text')])[1]
...    last_name=(//input[contains(@type,'text')])[2]
...    postal_code=(//input[contains(@type,'text')])[3]
...    cancel_btn=(//a[@href='./cart.html'])[2]
...    continue_btn=//input[contains(@value,'CONTINUE')]