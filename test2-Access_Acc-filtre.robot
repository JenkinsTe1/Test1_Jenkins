*** Settings ***
Documentation               Cables et fils electrique-Fils de cable_Partie des filtre
Library                     SeleniumLibrary
Variables                   ../customLibraries/Locators.py


*** Variables ***
${Browser}          Chrome
${URL}              http://192.168.31.31/
${Fabricant}    2
${Couleur}      1
${Taille-Dimension}     2
${Température}          1


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
                            [Arguments]         ${Fabricant}       ${Couleur}       ${Taille-Dimension}         ${Température}
                            select from list by index       ${Fabricant3}       ${Fabricant}
                            sleep       7
                            select from list by index       ${Couleur3}         ${Couleur}
                            sleep       7
                            select from list by index       ${Taille_Dimension31}          ${Taille-Dimension}
                            sleep       7
                            select from list by index       ${Température3}       ${Température}
                            sleep        7
                            click element                   ${Filtre_Button}
                            sleep       9
                            wait until element is visible   ${Produit_Access_31}