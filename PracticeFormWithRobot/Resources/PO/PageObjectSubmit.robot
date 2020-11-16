*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${SUBMIT_PAGE_HEADER} =     Thanks for submitting the form


*** Keywords ***

Verify Unsuccessful Submit

    Page Should Not Contain     ${SUBMIT_PAGE_HEADER}
    Capture Page Screenshot     unsuccessfull_submit.png




