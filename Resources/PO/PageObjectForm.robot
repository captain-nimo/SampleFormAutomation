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
${CALENDER_YEAR} =          css: .react-datepicker__year-select
${CALENDER_MONTH} =         css: .react-datepicker__month-select
${CALENDER_DAY} =           css: div[role='listbox'] > div:nth-of-type(1) > div:nth-of-type(6)
${SUBJECT} =                id: subjectsInput
${HOBBIES} =                css: #hobbiesWrapper .custom-control-inline:nth-of-type(1) .custom-control-label
${UPLOAD_PICTURE} =         id: uploadPicture
${CURRENT_ADDRESS} =        id: currentAddress
${STATE_DROPDOWN} =         css: #state [class=' css-26l3qy-menu']
${STATE_INPUT} =            id: react-select-3-input
${CITY_DROPDOWN} =          css: #city [class=' css-26l3qy-menu']
${CITY_INPUT} =             id: react-select-4-input
${SUBMIT_BUTTON} =          css: button#submit

*** Keywords ***

Verify Page Loaded

    Wait Until Page Contains        ${FORM_PAGE_HEADER}

Submit Form

    Wait Until Element Is Visible   ${SUBMIT_BUTTON}
    Scroll Page To Location         0    1500
    Click Button                    ${SUBMIT_BUTTON}
    Scroll Page To Location         0    0
    Sleep                           1s

Enter Name Values

    Input Text                      ${FIRST_NAME}           ${FIRST_NAME_VALUE}
    Input Text                      ${LAST_NAME}            ${LAST_NAME_VALUE}

Enter Email Value

    Input Text                      ${EMAIL}                ${EMAIL_VALUE}

Select Gender

    Click Element                   ${GENDER}

Enter Mobile Number

    Input Text                      ${MOBILE_NUM}           ${MOBILE_NUM_VALUE}

Enter Date Of Birth

    Click Element                   ${DOB}
    Select From List By Value       ${CALENDER_YEAR}        ${DOB_YEAR}
    Select From List By Value       ${CALENDER_MONTH}       ${DOB_MONTH}
    Click Element                   ${CALENDER_DAY}

Enter Subject

    Wait Until Element Is Visible   ${SUBJECT}
    Input Text                      ${SUBJECT}              ${SUBJECT_VALUE}
    Sleep                           1s

Select Hobbies

    Click Element                 ${HOBBIES}

Upload Picture

    Scroll Page To Location         0    500
    Choose File                     ${UPLOAD_PICTURE}       ${FILE_PATH}

Enter Current Address

    Input Text                      ${CURRENT_ADDRESS}      ${CURRENT_ADDRESS_VALUE}

Select State And City

    Input Text                          ${STATE_INPUT}   ${STATE_VALUE}
    Wait Until Element Is Visible       ${STATE_DROPDOWN}
    Click Element                       ${STATE_DROPDOWN}
    Input Text                          ${CITY_INPUT}    ${CITY_VALUE}
    Wait Until Element Is Visible       ${CITY_DROPDOWN}
    Click Element                       ${CITY_DROPDOWN}




