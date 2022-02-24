*** Settings ***
Documentation  Regression Test Lupa Password
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/lupapassword.robot
Resource    ../Keyword/login.robot

Test Setup  Open Browser
Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
Lupa Password
    [Documentation]  Regression Lupa Password
    [Tags]  Functionality
    Scenario 1: User mengklik label Lupa Password
    Scenario 2: User menginput username email Invalid
    Scenario 3: User menginput username email tidak diketahui
    Scenario 4: User mengklik Label kembali ke Login dari page Lupa Password
    Scenario 5: User menginput Email Valid dan mengklik button kirim
    Scenario 6: User mengklik Button kembali ke Login dari page konfirmasi Lupa Password

*** Keywords ***
Scenario 1: User mengklik label Lupa Password
    Click Button Lupa Password
    Verify Page Lupa Password
Scenario 2: User menginput username email Invalid
    Input Email Tidak Valid
    Click Button Kirim
    Verify Email Invalid
Scenario 3: User menginput username email tidak diketahui
    Input Email Tidak Diketahui
    Click Button Kirim
    Verify Email Tidak Diketahui
Scenario 4: User mengklik Label kembali ke Login dari page Lupa Password
    Click Back Dari Input Email
    Click Button Kirim
    Verify Page Login
Scenario 5: User menginput Email Valid dan mengklik button kirim
    Click Button Lupa Password
    Input Email Valid
    Click Button Kirim
    Verify Page Konfirmasi Email
Scenario 6: User mengklik Button kembali ke Login dari page konfirmasi Lupa Password
    Click Back Dari Konfirmasi Email
    Verify Page Login




