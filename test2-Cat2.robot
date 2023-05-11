*** Settings ***
Documentation       Alimentationa-Transformateurs_Partie des filtres
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource            ../PO/clickAn-Cat2-Transf.robot
Resource            ../PO/Choose-Transf-Filtre2.robot


*** Test Cases ***
Alimentationa-Transformateurs
                    resources.open the browser with URL
                    clickAn-Cat2-Transf.clicker sur alimentations-Transformateurs               ${Categories}            ${Alimentations}        ${TRANSFORMATEURS2}
                    Choose-Transf-Filtre2.filtrer les produits by attribute                   ${Courant_sortie_Max}        ${Fréquence_de_fonctio_Max}       ${Fréquence_de_fonctio_Min}      ${Nombre_de_sortie}     ${Taille_Dimension}        ${Tension_d_entrée_Max}       ${Tension_d_entrée_Min}        ${Tension_sortie1}




