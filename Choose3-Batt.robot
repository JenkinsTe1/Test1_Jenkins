*** Settings ***
Documentation       click an Cables et fils electrique-Fils de cable
Library             SeleniumLibrary
Variables           ../customLibraries/choose.py

*** Keywords ***
clicker sur un produit et voir le panier
                    [Arguments]         ${PRODUITS_Batt}     ${Ajout_Panier}        ${Voirr_Panier}       ${Valider_Commande}
                  sleep       5
                  click element          ${PRODUITS_Batt}
                  sleep       5
                  click element           ${Ajout_Panier}
                  sleep       3
                  click element           ${Voirr_Panier}
                  sleep       5
                  click element             ${Valider_Commande}
                  sleep     4