*** Settings ***
Documentation               Cables et fils electrique-Fils de cable_Partie des filtre
Library                     SeleniumLibrary
Variables                   ../customLibraries/Locators.py

*** Variables ***
${Courant_sortie_Max}       1
${Tension_d'entrée_Max}      1

*** Keywords ***
click an alimentation-ACCESSOIRES
                            [Arguments]         ${Categories}       ${Alimentations}        ${ACCESSOIRES_Cat2}
                            click element       ${Categories}
                            sleep       5
                            mouse down          ${Alimentations}
                            sleep       5
                            click element       ${ACCESSOIRES_Cat2}
                            sleep       5

filtrer les produits by attribute
                    [Arguments]          ${Courant_sortie_Max}        ${Tension_d'entrée_Max}
                    select from list by index          ${Courant_sortie_MaxAccess}       ${Courant_sortie_Max}
                    sleep       5
                    select from list by index          ${Tension_d_entrée_MaxAccess}              ${Tension_d'entrée_Max}
                    sleep       5
                    click element                                   ${button_filtre}
                    sleep       4
                    wait until element is visible                   ${PRODUITS_Access}
                    sleep       5







