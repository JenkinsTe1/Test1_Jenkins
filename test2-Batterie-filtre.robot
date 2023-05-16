*** Settings ***
Documentation               Alimentation-Batterie
Library                     SeleniumLibrary
Variables                   ../customLibraries/Locators.py

*** Variables ***
${Fabricant}      2
${Nombre_de_sortie}        1
${Taille_Dimension}         1
${Température de foncti}       1
${Tension_Entrée_Max}           1


*** Keywords ***
click an alimentation-Batterie
                           # [Arguments]              ${Categories}        ${Alimentations}        ${Batterie}
                            click element           xpath://span[contains(text(),'Categories')]
                            sleep       5
                            click element          xpath://header/div[1]/div[2]/div[1]/div[1]/ul[1]/li[2]/div[2]/div[1]/ul[1]/li[1]/a[1]
                            sleep       7
                            click element          css:body.page-template-default.page.page-id-775.theme-flatsome.woocommerce-js.yith-wcan-pro.lightbox.nav-dropdown-has-shadow.nav-dropdown-has-border.page-template-blank.page-template-blank-php:nth-child(2) div.content-area section.section:nth-child(3) div.section-content.relative:nth-child(2) div.row:nth-child(1) div.col.medium-4.small-12.large-4:nth-child(1) div.col-inner.box-shadow-3:nth-child(1) div.row.row-collapse div.col.medium-8.large-8:nth-child(2) div.col-inner h3:nth-child(2) > a:nth-child(1)
                            sleep       7

filtrer les produits by attribute
                    [Arguments]          ${Fabricant}       ${Nombre_de_sortie}         ${Taille_Dimension}         ${Température de foncti}        ${Tension_Entrée_Max}
                    select from list by index          ${Fabricant_Batterie1}          ${Fabricant}
                    sleep       5
                    select from list by index          ${Nombre_de_sortie1}        ${Nombre_de_sortie}
                    sleep       5
                    select from list by index          ${Taille_Dimension1}              ${Taille_Dimension}
                    sleep       5
                    select from list by index        ${Température de foncti2}       ${Température de foncti}
                    sleep       5
                    select from list by index          ${Tension_Entrée_Max1}            ${Tension_Entrée_Max}
                    sleep       5
                    click element                                   ${button_filtre}
                    sleep       4
                    wait until element is visible                   ${PRODUIT2_Batterie}
                    sleep       5







