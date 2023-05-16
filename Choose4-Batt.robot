*** Settings ***
Documentation       click an Cables et fils electrique-Fils de cable
Library             SeleniumLibrary
Variables           ../customLibraries/choose.py

*** Keywords ***
clicker sur un produit et passer la commande
                    [Arguments]         ${PRODUITS_Batt}     ${Ajout_Panier}        ${Commanderr}
                  sleep       6
                  click element          ${PRODUITS_Batt}
                  sleep       5
                  click element           ${Ajout_Panier}
                  sleep       3
                  click element           ${Commanderr}
                  sleep       5
