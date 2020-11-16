*** Settings ***

Resource    ../Resources/PO/PageObjectForm.robot
Resource    ../Resources/PO/PageObjectSubmit.robot

*** Keywords ***

Verify Correct Page Loaded

    PageObjectForm.Verify Page Loaded

Submit Empty Form

    PageObjectForm.Submit Form
    PageObjectSubmit.Verify Unsuccessful Submit




