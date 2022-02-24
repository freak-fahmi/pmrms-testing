*** Settings ***
Library     SeleniumLibrary
Resource    ../Xpath/administrasi.robot

*** Variables ***

*** Keywords ***
Click Menu Administrasi
    Wait Until Element Is Visible    ${menuAdministrasi}
    Click Element                    ${menuAdministrasi}
Click Menu Izin Cuti
    Click Element                    ${menuIzinCuti}
Verify Page Izin Cuti
    Wait Until Element Is Visible    ${verifyIzinCuti}
    Page Should Contain Element      ${verifyIzinCuti}
Click Button Ajukan Izin Cuti
    Click Element                    ${verifyIzinCuti}
    Wait Until Element Is Visible    ${btnAjukanCuti}
    Click Element                    ${btnAjukanCuti}
Verify Form Pengajuan Cuti
    Wait Until Element Is Visible    ${verifyFormAjukanCuti}
    Click Element                    ${verifyFormAjukanCuti}
Click Button Kembali
    Click Element                    ${btnKembali}
Click Button Batal
    Wait Until Element Is Visible     ${btnBatal}
    Execute JavaScript              document.evaluate("${btnBatal}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element                     ${btnBatal}
Click Direktori Staff
    Click Element    ${menuDirektoriStaff}
Verify Page Direktori Staff
    Wait Until Element Is Visible       ${verifyDaftarStaff}
    Page Should Contain Element         ${verifyDaftarStaff}
Click Lihat Detail Daftar Staff
    Wait Until Element Is Visible       ${btnLihatDetail}
    Click Element    ${btnLihatDetail}
Verify Page Detail Staff
    Wait Until Element Is Visible       ${btnEditStaff}
    Page Should Contain Element         ${btnEditStaff}
Click Button Edit Staff
    Click Element                       ${btnEditStaff}
Verify Page Edit Staff
    Wait Until Element Is Visible       ${btnKembali}
    Page Should Contain Element         ${btnKembali}
Click Menu Kegiatan Luar Kota
    Click Element    ${menuKegiatanLuarKota}
Verify Page Kegiatan Luar Kota
    Wait Until Element Is Visible       ${verifyKegiatanLuarKota}
    Page Should Contain Element         ${verifyKegiatanLuarKota}
Click Button Ajukan Kegiatan
    Click Element    ${verifyKegiatanLuarKota}
    Click Element    ${btnAjukanKegiatan}
Verify Page Form Pengajuan Kegiatan
    Wait Until Element Is Visible       ${verifyPengajuanKegiatan}
    Page Should Contain Element         ${verifyPengajuanKegiatan}
Input Pencarian Nama Staff
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}          Iwan
Input Pencarian Unit Kerja
    Go To    http://pmrms.greatpmo.com/administrasi/detail
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}          Unit Pengelola Proyek
Input Pencarian Jabatan
    Go To    http://pmrms.greatpmo.com/administrasi/detail
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}          Staff Treasure PMU
Verify Nama Staff
    Wait Until Element Is Visible       ${verifyNamaStaff}
    Page Should Contain Element         ${verifyNamaStaff}
Verify Unit Kerja
    Wait Until Element Is Visible       ${verifyUnitkerja}
    Page Should Contain Element         ${verifyUnitkerja}
Verify Jabatan
    Wait Until Element Is Visible       ${verifyJabatan}
    Page Should Contain Element         ${verifyJabatan}
Click Button Cari
    Click Element    ${btnCari}
Click Button Simpan
    Wait Until Element Is Visible     ${btnSimpan}
    Execute JavaScript              document.evaluate("${btnSimpan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();

