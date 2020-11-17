*** Settings ***

Documentation    This is the test file which contains the test cases for practice form automation.

Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/PracticeFormWeb.robot  # necessary for lower level keywords in test cases

Test Setup          Common.Begin Web Test
Test Teardown       Common.End Web Test

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

    [Documentation]    Trying to submit the form with mandatory fields
    [Tags]             Smoke

    Submit Form With Only Mandatory Fields

Verify Form Submission With All The Fields

    [Documentation]    Trying to submit the form with all the fields
    [Tags]             Smoke

    Submit Form With ALL Fields




