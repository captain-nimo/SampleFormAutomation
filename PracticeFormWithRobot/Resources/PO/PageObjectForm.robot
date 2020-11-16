*** Settings ***

Library     SeleniumLibrary
Resource  ../../Resources/Common.robot

*** Variables ***

${FORM_PAGE_HEADER} =       Practice Form
${FIRST_NAME} =             id: firstName
${LAST_NAME} =              id: lastName
${EMAIL} =                  id: userEmail
${GENDER} =                 css: div#genterWrapper > .col-md-9.col-sm-12 > div:nth-of-type(1) > label
${MOBILE_NUM} =             id: userNumber
${DOB} =                    id: dateOfBirthInput
${SUBJECT} =                xpath: //div[@id='subjectsContainer']/div/div[1]
${HOBBIES} =                id: hobbies-checkbox-1
${UPLOAD_PICTURE} =         id: uploadPicture
${CURRECT_ADDRESS} =        id: currentAddress
${STATE_LABEL} =            id:stateCity-label
${STATE_DROPDOWN} =         id: state
${STATE_VALUE} =            Rajasthan
${CITY_DROPDOWN} =          id: city
${CITY_VALUE} =             Jaipur
${SUBMIT_BUTTON} =          css: button#submit

*** Keywords ***

Verify Page Loaded

    Wait Until Page Contains        ${FORM_PAGE_HEADER}

Submit Form

    Wait Until Element Is Visible   ${SUBMIT_BUTTON}
    Scroll Page To Location         0    1500
    Click Button                    ${SUBMIT_BUTTON}
    Scroll Page To Location         0    0

Enter Name Values

    Input Text                      ${FIRST_NAME}   ${FIRST_NAME_VALUE}
    Input Text                      ${LAST_NAME}    ${LAST_NAME_VALUE}

Enter Email Value

    Input Text                      ${EMAIL}        ${EMAIL_VALUE}

Select Gender

    Click Element                   ${GENDER}

Enter Mobile Number

    Input Text                      ${MOBILE_NUM}   ${MOBILE_NUM_VALUE}




