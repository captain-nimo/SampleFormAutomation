*** Settings ***

Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/PracticeFormWeb.robot  # necessary for lower level keywords in test cases

Suite Setup  Common.Begin Web Test
Suite Teardown  Common.End Web Test

*** Variables ***


*** Test Cases ***

Verify correct page is loaded

    [Documentation]    Trying to submit an empty form
    [Tags]             Smoke

    PracticeFormWeb.Verify Correct Page Loaded

Verify system does not take empty form

    [Documentation]    Trying to submit an empty form
    [Tags]             Smoke

    PracticeFormWeb.Submit Empty Form




