*** Settings ***
Documentation               Cables et fils electrique-Fils de cable_Partie des filtre
Library                     SeleniumLibrary
Variables                   ../customLibraries/Locators.py


*** Variables ***
${Browser}          Chrome
${URL}              http://192.168.31.31/
${Fabricant}    1
${Couleur}      1
${Matériel}        1
${Taille-Dimension}     1


*** Keywords ***
clicker sur Cables et fils electrique - ACCESSOIRES DE CÂBLAGES - Collier
                            [Arguments]                  ${Câbles_fils_electrique3}       ${Access_Cab3}       ${Collier3}
                            sleep       6
                            click element           ${Câbles_fils_electrique3}
                            sleep       5
                            click element           ${Access_Cab3}
                            sleep       4
                            click element               ${Collier3}
                            sleep       4

filtrer les produits by attribute
                            [Arguments]         ${Fabricant}       ${Couleur}        ${Matériel}       ${Taille-Dimension}
                            select from list by index       ${Fabricant3}       ${Fabricant}
                            sleep       7
                            select from list by index       ${Couleur3}         ${Couleur}
                            sleep       7
                            select from list by index       ${Matériel3}       ${Matériel}
                            sleep        7
                            select from list by index       ${Taille_Dimension3}          ${Taille-Dimension}
                            sleep       7
                            click element                   ${Filtre_Button}
                            sleep       9
                            wait until element is visible   ${Produit_Access_3}