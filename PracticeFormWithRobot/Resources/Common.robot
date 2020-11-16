*** Settings ***

Library     SeleniumLibrary


*** Variables ***

${BROWSER} =            chrome
${BASE_URL} =           https://demoqa.com/automation-practice-form

*** Keywords ***

Begin Web Test

    Open Browser    ${BASE_URL}      ${BROWSER}
    Maximize Browser Window
    Sleep    2s

End Web Test

    Close Browser

Scroll Page To Location

    [Arguments]                     ${x_location}    ${y_location}
    Execute JavaScript              window.scrollTo(${x_location},${y_location})




