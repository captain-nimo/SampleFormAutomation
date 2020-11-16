*** Settings ***

Resource    ../Resources/PO/PageObjectForm.robot
Resource    ../Resources/PO/PageObjectSubmit.robot

*** Keywords ***

Verify Correct Page Loaded

    PageObjectForm.Verify Page Loaded

Submit Empty Form

    PageObjectForm.Submit Form
    PageObjectSubmit.Verify Unsuccessful Submit

Submit Form With Only Mandatory Fields

    PageObjectForm.Enter Name Values
    PageObjectForm.Select Gender
    PageObjectForm.Enter Mobile Number
    PageObjectForm.Submit Form
    PageObjectSubmit.Verify Successful Submit




