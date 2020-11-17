*** Settings ***

Documentation    This file is for generating steps for the test cases

Resource    ../Resources/PO/PageObjectForm.robot
Resource    ../Resources/PO/PageObjectSubmit.robot

*** Keywords ***

Verify Correct Page Loaded

    PageObjectForm.Verify Page Loaded

Submit Empty Form

    PageObjectForm.Verify Page Loaded
    PageObjectForm.Submit Form
    PageObjectSubmit.Verify Unsuccessful Submit

Submit Form With Only Mandatory Fields

    PageObjectForm.Verify Page Loaded
    PageObjectForm.Enter Name Values
    PageObjectForm.Select Gender
    PageObjectForm.Enter Mobile Number
    PageObjectForm.Submit Form
    PageObjectSubmit.Verify Successful Submit With Mandatory Fields

Submit Form With ALL Fields

    PageObjectForm.Verify Page Loaded
    PageObjectForm.Enter Name Values
    PageObjectForm.Enter Email Value
    PageObjectForm.Select Gender
    PageObjectForm.Enter Mobile Number
    PageObjectForm.Enter Date Of Birth
    PageObjectForm.Enter Subject
    PageObjectForm.Select Hobbies
    PageObjectForm.Upload Picture
    PageObjectForm.Enter Current Address
    PageObjectForm.Select State And City
    PageObjectForm.Submit Form
    PageObjectSubmit.Verify Successful Submit With All Fields




