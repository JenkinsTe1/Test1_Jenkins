*** Settings ***
Documentation       click an Cables et fils electrique-Fils de cable
Library             SeleniumLibrary
Variables           ../customLibraries/Locators.py

*** Keywords ***
clicker sur alimentations-Transformateurs
                  [Arguments]           ${Categories}       ${Alimentations}        ${TRANSFORMATEURS2}
                  click element       ${Categories}
                  sleep       5
                  mouse down          ${Alimentations}
                  sleep       5
                  click element       ${TRANSFORMATEURS2}
                  sleep     5
