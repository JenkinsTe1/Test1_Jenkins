*** Settings ***
Documentation               Alimentation-Batterie
Library                     SeleniumLibrary
Variables                   ../customLibraries/Locators.py

*** Variables ***
${Fabricant}      1
${Nombre_de_sortie}        1
${Taille_Dimension}         1
${Tension_Entrée_Max}           1
${Tension_Entrée_Min}       1

*** Keywords ***
click an alimentation-Batterie
                            #[Arguments]                 ${Alimentations_Acc}        ${Batterie}
                            click element         css:body.home.page-template-default.page.page-id-1039.theme-flatsome.woocommerce-js.yith-wcan-pro.lightbox.nav-dropdown-has-shadow.nav-dropdown-has-border.page-template-blank.page-template-blank-php:nth-child(2) div.content-area div.row:nth-child(3) div.col.small-12.large-12 div.col-inner div.row.row-small.row-full-width div.col.medium-12.small-12.large-6:nth-child(2) div.col-inner div.row.row-small div.col.medium-6.small-12.large-6:nth-child(2) div.col-inner div.box.has-hover.has-hover.box-overlay.dark.box-text-middle div.box-text.text-center div.box-text-inner a.button.primary > span:nth-child(1)
                            sleep       7
                            click element          css:body.page-template-default.page.page-id-775.theme-flatsome.woocommerce-js.yith-wcan-pro.lightbox.nav-dropdown-has-shadow.nav-dropdown-has-border.page-template-blank.page-template-blank-php:nth-child(2) div.content-area section.section:nth-child(3) div.section-content.relative:nth-child(2) div.row:nth-child(1) div.col.medium-4.small-12.large-4:nth-child(1) div.col-inner.box-shadow-3:nth-child(1) div.row.row-collapse div.col.medium-8.large-8:nth-child(2) div.col-inner h3:nth-child(2) > a:nth-child(1)
                            sleep       7

filtrer les produits by attribute
                    [Arguments]          ${Fabricant}       ${Nombre_de_sortie}         ${Taille_Dimension}         ${Tension_Entrée_Max}       ${Tension_Entrée_Min}
                    select from list by index          ${Fabricant_Batterie1}          ${Fabricant}
                    sleep       5
                    select from list by index          ${Nombre_de_sortie1}        ${Nombre_de_sortie}
                    sleep       5
                    select from list by index          ${Taille_Dimension1}              ${Taille_Dimension}
                    sleep       5
                    select from list by index          ${Tension_Entrée_Max1}            ${Tension_Entrée_Max}
                    sleep       5
                    select from list by index          ${Tension_Entrée_Min1}            ${Tension_Entrée_Min}
                    sleep       5
                    click element                                   ${button_filtre}
                    sleep       4
                    wait until element is visible                   ${PRODUIT1_Batterie}
                    sleep       5







