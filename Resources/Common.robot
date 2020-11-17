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
${DOB_YEAR} =                   2010
${DOB_MONTH} =                  0
${SUBJECT_VALUE} =              Test Subject
${CURRENT_ADDRESS_VALUE} =      House # 1, Road # 2, Apartment # 3
${FILE_PATH} =                  /Users/mahmudul/Desktop/gotham_city.jpg
${STATE_VALUE} =                Rajasthan
${CITY_VALUE} =                 Jaipur

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




