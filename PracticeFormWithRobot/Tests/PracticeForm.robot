*** Settings ***

Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/PracticeFormWeb.robot  # necessary for lower level keywords in test cases

Suite Setup     Common.Begin Web Test
Suite Teardown  Common.End Web Test

*** Variables ***


*** Test Cases ***

Verify Correct Page Is Loaded

    [Documentation]    Trying to submit an empty form
    [Tags]             Smoke

    Verify Correct Page Loaded

Verify System Does Not Take Empty Form

    [Documentation]    Trying to submit an empty form
    [Tags]             Smoke

    Submit Empty Form

Verify Form Submission With Mandatory Fields

    Submit Form With Only Mandatory Fields




