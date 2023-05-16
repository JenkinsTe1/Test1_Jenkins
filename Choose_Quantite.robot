*** Settings ***
Documentation       click an Cables et fils electrique-Fils de cable
Library             SeleniumLibrary
Variables           ../customLibraries/choose.py

*** Keywords ***
clicker sur un produit et voir le panier
                  [Arguments]         ${clicker_Produit}     ${Ajout_Panier}        ${Voirr_Panier}
                  sleep       7
                  click element          ${clicker_Produit}
                  sleep       5
                  click element           ${Ajout_Panier}
                  sleep       3
                  click element           ${Voirr_Panier}
                  sleep       5

Eliminer le produit (0 Produits)
                 [Arguments]         ${Soustracter_nbr_produit}    ${Mettre_à_jour_panier}      ${Retour_à_la_boutique}
                 click element          ${Soustracter_nbr_produit}
                 sleep      3
                 click element          ${Mettre_à_jour_panier}                                 ### 0 Produits
                 sleep      9
                 click element          ${Retour_à_la_boutique}
                 sleep      5
                 wait until element is visible          ${Categories}
                 sleep      3
                 click element                          ${Câbles_assembles}
                 sleep      4
                 wait until element is visible          ${PRODUITS_Câbles_assembles}

