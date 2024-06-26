*** Settings ***
###    Libraries    ####
Library           SeleniumLibrary
Library           OperatingSystem
Library           Collections
Library           DebugLibrary

###    Global    ###
Resource          ./auto/resource/global/global.robot

###    Keywords    ###
Resource          ./auto/resource/keywords/kw_login.robot
Resource          ./auto/resource/keywords/kw_add_item.robot
Resource          ./auto/resource/keywords/kw_cart.robot

###    Pages    ###
Resource          ./auto/resource/pages/page_login.robot
Resource          ./auto/resource/pages/page_home.robot
Resource          ./auto/resource/pages/page_product.robot
Resource          ./auto/resource/pages/page_cart.robot
Resource          ./auto/resource/pages/page_address.robot