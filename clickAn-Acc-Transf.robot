*** Settings ***
Documentation       click an Cables et fils electrique-Fils de cable
Library             SeleniumLibrary
Variables           ../customLibraries/Locators.py

*** Keywords ***
clicker sur alimentations-Transformateurs
                  [Arguments]            ${Alimentations2}        ${TRANSFORMATEURS}
                  click element       ${Alimentations2}
                  sleep       5
                  click element       ${TRANSFORMATEURS}
                  sleep     5
