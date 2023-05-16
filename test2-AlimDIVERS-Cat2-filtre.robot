*** Settings ***
Documentation               Cables et fils electrique-Fils de cable_Partie des filtre
Library                     SeleniumLibrary
Variables                   ../customLibraries/Locators.py

*** Variables ***
${Courant_sortie_MaxDiv}        1
${Puissance}                1
${Taille_Dimention}             1
${Tension_d'entrée_Max}             1
${Tension_d_entrée_Min}         1

*** Keywords ***
click an alimentation-DIVERS
                            [Arguments]                 ${Categories}        ${Alimentations}        ${DIVERS_cat2}
                            click element           ${Categories}
                            sleep       5
                            mouse down              ${Alimentations}
                            sleep       5
                            click element           ${DIVERS_cat2}
                            sleep       5

filtrer les produits by attribute
                    [Arguments]          ${Courant_sortie_MaxDiv}        ${Puissance}          ${Taille_Dimention}       ${Tension_d'entrée_Max}     ${Tension_d_entrée_Min}
                    select from list by index              ${Courant_sortie_Max}           ${Courant_sortie_MaxDiv}
                    sleep       5
                    select from list by index          ${Puissance_Divers2}       ${Puissance}
                    sleep       5
                    select from list by index          ${Taille_Dime}       ${Taille_Dimention}
                    sleep       5
                    select from list by index          ${Tension_d_entrée_MaxDiv}              ${Tension_d'entrée_Max}
                    sleep       5
                    select from list by index          ${Tension_d_entrée_MinDiv}              ${Tension_d_entrée_Min}
                    sleep       5
                    click element                                   ${button_filtre}
                    sleep       4
                    wait until element is visible                   ${PRODUITS_DIVERS2}
                    sleep       5







