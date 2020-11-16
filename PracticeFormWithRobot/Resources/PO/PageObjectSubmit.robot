*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${SUBMIT_PAGE_HEADER} =     Thanks for submitting the form
${SUBMIT_CLOSE_BUTTON} =    css: button#closeLargeModal


*** Keywords ***

Verify Unsuccessful Submit

    Page Should Not Contain     ${SUBMIT_PAGE_HEADER}
    Capture Page Screenshot     unsuccessfull_submit.png

Verify Successful Submit

    Page Should Contain         ${SUBMIT_PAGE_HEADER}
    Capture Page Screenshot     successfull_submit.png
    Click Button                ${SUBMIT_CLOSE_BUTTON}




