*** Settings ***

Library     SeleniumLibrary


*** Variables ***

${BROWSER} =            chrome
${BASE_URL} =           https://demoqa.com/automation-practice-form

${FIRST_NAME_VALUE} =           Test
${LAST_NAME_VALUE} =            Student
${EMAIL_VALUE} =                test@test.com
${MOBILE_NUM_VALUE} =           1111111111
${DOB_VALUE} =                  01 Jan 2010
${SUBJECT_VALUE} =              Test Subject
${CURRECT_ADDRESS_VALUE} =      Test Address

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




