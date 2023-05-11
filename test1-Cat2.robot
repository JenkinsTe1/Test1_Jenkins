*** Settings ***
Documentation       Alimentationa-Transformateurs_Partie des filtres
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource            ../PO/clickAn-Cat2-Transf.robot
Resource            ../PO/Choose-Transf-Filtre.robot
                                                                 #####       BEUG        ###

*** Test Cases ***
Alimentationa-Transformateurs
                    resources.open the browser with URL
                    clickAn-Cat2-Transf.clicker sur alimentations-Transformateurs             ${Categories}           ${Alimentations}        ${TRANSFORMATEURS2}
                    Choose-Transf-Filtre.filtrer les produits by attribute                    ${Fabricant}       ${Courant_sortie_Max}        ${Fréquence_de_fonctio_Max}       ${Fréquence_de_fonctio_Min}      ${Nombre_de_sortie}     ${Puissance}        ${Température_de_foncti}       ${Tension_sortie1}


