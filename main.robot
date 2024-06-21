*** Settings ***
###    Libraries    ####
Library           SeleniumLibrary
Library           OperatingSystem
Library           Collections
Library           String
Library           DateTime
Library           FakerLibrary
Library           DebugLibrary

###    Global    ###
Resource          ./auto/resource/global/global.robot

###    Keywords    ###
Resource          ./auto/resource/keywords/kw_login.robot

###    Pages    ###
Resource          ./auto/resource/pages/page_login.robot