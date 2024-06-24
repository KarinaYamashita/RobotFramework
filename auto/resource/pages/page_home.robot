*** Variables ***

&{Products}
...    label=//div[@class='product_label']
...    product_btn_1=(//button[contains(.,'ADD TO CART')])[1]
...    product_btn_2=(//button[contains(.,'ADD TO CART')])[2]
...    product_btn_3=(//button[contains(.,'ADD TO CART')])[3]
...    btn_remove=//*[@id="inventory_container"]/div/div[1]/div[3]/button
...    product_1=//*[@id="item_4_title_link"]/div
...    product_2=//*[@id="item_0_img_link"]/img
...    product_3=//*[@id="item_1_title_link"]/div
...    product_4=//*[@id="item_5_img_link"]/img
...    product_5=//*[@id="item_2_title_link"]/div
...    product_6=//*[@id="item_3_img_link"]/img

&{Menu}
...    menu=//*[@id="menu_button_container"]/div/div[3]/div/button
...    all_items=//*[@id="inventory_sidebar_link"]
...    about=//*[@id="about_sidebar_link"]
...    logout=//*[@id="logout_sidebar_link"]

&{Cart}
...    your_cart=//*[@id="shopping_cart_container"]/a
...    card_counter=//span[@class='fa-layers-counter shopping_cart_badge']
...    qty=//*[@id="cart_contents_container"]/div/div[1]/div[3]/div[1]