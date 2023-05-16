*** Settings ***
Documentation       click an Cables et fils electrique-Fils de cable
Library             SeleniumLibrary
Variables           ../customLibraries/choose.py

*** Keywords ***
clicker sur un produit et voir le panier
                    [Arguments]         ${clicker_Produit2}     ${Ajouter_au_panier2}        ${Voirr_Panier}       ${Valider_Commande}
                  sleep       5
                  click element          ${clicker_Produit2}
                  sleep       5
                  click element           ${Ajouter_au_panier2}
                  sleep       3
                  click element           ${Voirr_Panier}
                  sleep       5
                  click element             ${Valider_Commande}
                  sleep     4