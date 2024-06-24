*** Variables ***

&{Products}
...    label=//div[@class='product_label']
...    first_product_btn=(//button[contains(.,'ADD TO CART')])[1]
...    card_counter=//span[@class='fa-layers-counter shopping_cart_badge']
...    btn_remove=//*[@id="inventory_container"]/div/div[1]/div[3]/button