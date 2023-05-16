*** Settings ***
Documentation               Cables et fils electrique-Fils de cable_Partie des filtre
Library                     SeleniumLibrary
Variables                   ../customLibraries/Locators.py

*** Variables ***
${Fabricant}      1
${Puissance}        1
${Tension_d'entrée_Max}         1

*** Keywords ***
click an alimentation-DIVERS
                            [Arguments]                    ${Categories}         ${Alimentations}        ${DIVERS}
                            click element           ${Categories}
                            sleep       5
                            click element          ${Alimentations}
                            sleep       5
                            click element          ${DIVERS}
                            sleep       5

filtrer les produits by attribute
                    [Arguments]          ${Fabricant}        ${Puissance}           ${Tension_d'entrée_Max}
                    select from list by index          ${Fabricant_Divers}          ${Fabricant}
                    sleep       5
                    select from list by index          ${Puissance_Divers}       ${Puissance}
                    sleep       5
                    select from list by index          ${Tension_d_entrée_MaxDivers}              ${Tension_d'entrée_Max}
                    sleep       5
                    click element                                   ${button_filtre}
                    sleep       4
                    wait until element is visible                   ${PRODUITS_DIVERS}
                    sleep       5







