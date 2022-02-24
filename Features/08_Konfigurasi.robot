*** Settings ***
Documentation  Regression Test Konfigurasi Pengguna
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/konfigurasi.robot
Resource    ../Keyword/login.robot

#Test Setup  Open Browser
Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
Menu Konfigurasi
    [Documentation]  Regression Menu Konfigurasi Pengguna
    [Tags]  Functionality
    Scenario 1: Login with username valid and password valid
    Scenario 2: User mengklik menu konfigurasi
    Scenario 3: User mengklik button tambah pengguna
    Scenario 4: User menambahkan pengguna dengan role staff
    Scenario 5: User mengklik Batal dari page tambah pengguna

*** Keywords ***
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
Scenario 2: User mengklik menu konfigurasi
    Click Menu Konfigurasi
    Verify Page Konfigurasi
Scenario 3: User mengklik button tambah pengguna
    Click Button Tambah Pengguna
    Verify Page Tambah Pengguna
Scenario 4: User menambahkan pengguna dengan role staff
    Input Nama Depan
    Input Nama Belakang
    input Email
    Click Tambah Role
    Select Role
    Click Ubah Photo
    Select Image
    Click Simpan Upload Photo
    Click Button Simpan Tambah Pengguna
Scenario 5: User mengklik Batal dari page tambah pengguna
    Click Button Tambah Pengguna
    Click Button Batal Tambah Pengguna
    Verify Page Konfigurasi
Scenario 6: User Search Pencarian by Nama Lengkap
    Search Pencarian by Nama Lengkap
    Click Button Cari
    Verify Nama Lengkap
Scenario 7: User Search Pencarian by Email
    Search Pencarian by Email
    Click Button Cari
    Verify Email





