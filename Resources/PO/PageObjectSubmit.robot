*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${SUBMIT_PAGE_HEADER} =     Thanks for submitting the form
${SUBMIT_CLOSE_BUTTON} =    css: button#closeLargeModal


*** Keywords ***

Verify Unsuccessful Submit

    Page Should Not Contain     ${SUBMIT_PAGE_HEADER}
    Capture Page Screenshot     unsuccessfull_submit.png

Verify Successful Submit With Mandatory Fields

    Page Should Contain         ${SUBMIT_PAGE_HEADER}
    Capture Page Screenshot     successfull_submit_mandatory.png
    Click Button                ${SUBMIT_CLOSE_BUTTON}

Verify Successful Submit With All Fields

    Page Should Contain         ${SUBMIT_PAGE_HEADER}
    Capture Page Screenshot     successfull_submit_all.png
    Click Button                ${SUBMIT_CLOSE_BUTTON}




