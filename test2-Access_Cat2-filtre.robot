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
                            [Arguments]             ${Categories}          ${Câbles_fils_electrique}        ${Access_Cab33}       ${Collier}
                            click element       ${Categories}
                            sleep       4
                            mouse down           ${Câbles_fils_electrique}
                            sleep       5
                            click element       ${Access_Cab33}   #css:body.page-template-default.page.page-id-837.theme-flatsome.woocommerce-js.yith-wcan-pro.lightbox.nav-dropdown-has-shadow.nav-dropdown-has-border.page-template-blank.page-template-blank-php:nth-child(2) div.content-area section.section:nth-child(3) div.section-content.relative:nth-child(2) div.row div.col.medium-4.small-12.large-4:nth-child(5) div.col-inner.box-shadow-3:nth-child(1) div.row.row-collapse div.col.medium-8.large-8:nth-child(2) div.col-inner h3:nth-child(2) > a:nth-child(1)
                            sleep       4
                            click element       ${Collier}
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