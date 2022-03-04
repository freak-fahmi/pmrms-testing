*** Settings ***
Documentation  Regression Test Menu Administrasi Direktori Staff
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/administrasi.robot
Resource    ../Keyword/login.robot

#Test Setup  Open Browser
Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
Menu Administrasi Direktori Staff
    [Documentation]  Regression Test Menu Administrasi Direktori Staff
    [Tags]  Functionality
    Scenario 1: Login with username valid and password valid
    Scenario 2: User mengklik Menu Administrasi lalu pilih menu Direktori Staff
    Scenario 3: User mengklik menu lihat detail staff dari page direktori staff
    Scenario 4: User Mengklik Button Edit pada Page Detail Staff
    Scenario 5: User Mengklik Button Kembali dari page edit staff
    Scenario 6: User Mengklik Button Batal dari Page edit staff
    Scenario 7: User Mengklik Button Edit Lalu Klik Simpan
    Scenario 8: User Mengklik Button Kembali dari Page Detail Staff
    Scenario 9: User Input Data Pencarian Nama Staff Lalu klik Button Cari
    Scenario 10: User Input Data Pencarian Unit Kerja Lalu klik Button Cari
    Scenario 11: User Input Data Pencarian Jabatan Lalu klik Button Cari
    Scenario 12: User menginputkan character dan simbol di field search lalu klik cari

*** Keywords ***
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
Scenario 2: User mengklik Menu Administrasi lalu pilih menu Direktori Staff
    Click Menu Administrasi
    Click Direktori Staff
    Verify Page Direktori Staff
Scenario 3: User mengklik menu lihat detail staff dari page direktori staff
    Click Lihat Detail Daftar Staff
    Verify Page Detail Staff
Scenario 4: User Mengklik Button Edit pada Page Detail Staff
    Click Button Edit Staff
    Verify Page Edit Staff
Scenario 5: User Mengklik Button Kembali dari page edit staff
    Click Button Kembali
    Verify Page Detail Staff
Scenario 6: User Mengklik Button Batal dari Page edit staff
    Click Button Edit Staff
    Click Button Batal
    Verify Page Detail Staff
Scenario 7: User Mengklik Button Edit Lalu Klik Simpan
    Click Button Edit Staff
    Click Button Simpan
    Verify Page Detail Staff
Scenario 8: User Mengklik Button Kembali dari Page Detail Staff
    Click Button Kembali
    Verify Page Direktori Staff
Scenario 9: User Input Data Pencarian Nama Staff Lalu klik Button Cari
    Input Pencarian Nama Staff
    Click Button Cari
    Verify Nama Staff
Scenario 10: User Input Data Pencarian Unit Kerja Lalu klik Button Cari
    Input Pencarian Unit Kerja
    Click Button Cari
    Verify Unit Kerja
Scenario 11: User Input Data Pencarian Jabatan Lalu klik Button Cari
    Input Pencarian Jabatan
    Click Button Cari
    Verify Jabatan
Scenario 12: User menginputkan character dan simbol di field search lalu klik cari
    Input Data No Data
    Click Button Cari
    Verify No Data








