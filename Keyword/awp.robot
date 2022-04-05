*** Settings ***
Library     SeleniumLibrary
Resource    ../Xpath/awp.robot

*** Variables ***

*** Keywords ***
Click Menu AWP
    Wait Until Element Is Visible    ${menuAwp}     timeout=30s
    Click Element    ${menuAwp}
Verify Page AWP
    Wait Until Element Is Visible    ${verifyAwp}  timeout=30s
    Page Should Contain Element    ${verifyAwp}
Input Search by Nama kegiatan AWP
    Wait Until Element Is Visible    ${searchAwp}
    Input Text      ${searchAwp}    Automation
Input Search by Pagu Anggaran AWP
    Go To       http://pmrms.greatpmo.com/admin/awp
    Wait Until Element Is Visible    ${searchAwp}
    Input Text      ${searchAwp}    200
Click Detail Awp
    Wait Until Element Is Visible    ${detailAwp}   timeout=30s
#    Click Element    ${detailAwp}
    Execute JavaScript              document.evaluate("${detailAwp}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Verify Detail Awp
    Wait Until Element Is Visible    ${verifyDetailAwp}     timeout=30s
    Page Should Contain Element    ${verifyDetailAwp}
Input Search by Komponen AWP
    Go To       http://pmrms.greatpmo.com/admin/awp
    Wait Until Element Is Visible    ${searchAwp}
    Input Text      ${searchAwp}    Kelompok Kerja Guru
Input Search Karakter Angka Tidak sesuai
    Go To       http://pmrms.greatpmo.com/admin/awp
    Wait Until Element Is Visible    ${searchAwp}
    Input Text      ${searchAwp}    testing123
Click Button Cari
    Click Element       ${btnCari}
Verify Search AWP
    Wait Until Element Is Visible    ${verifySearch}
    Page Should Contain Element    ${verifySearch}
Verify Pagu Anggaran Awp
    Wait Until Element Is Visible    ${verifySearchPaguAnggran}
    Page Should Contain Element    ${verifySearchPaguAnggran}
Verify komponen Awp
    Wait Until Element Is Visible    ${verifySearchKomponen}
    Page Should Contain Element    ${verifySearchKomponen}
Verify No Data
    Wait Until Element Is Visible    ${verifyNoData}
    Page Should Contain Element    ${verifyNoData}
Click Pagination AWP
    Wait Until Element Is Visible    ${pagination}
    Execute JavaScript              document.evaluate("${pagination}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element    ${pagination}
Verify Pagination AWP
    Wait Until Element Is Visible       ${verfyPagination}
    Page Should Contain Element         ${verfyPagination}
Click Button Tambah AWP
    Click Element    ${btnAdd}
Verify Page Tambah AWP
    Wait Until Element Is Visible       ${verifyAddAwp}
    Page Should Contain Element         ${verifyAddAwp}
Click Button Kembali
    Click Element    ${btnKembali}
Click Button Batal
    Wait Until Element Is Visible    ${btnBatal}       timeout=30s
    Execute JavaScript              document.evaluate("${btnBatal}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Input Data Umum
    Input Text    ${inputTahun}         2022
    Click Element    ${pilihKomponen}
    Click Element    ${clickKomponen}
    Click Element    ${clickKomponen}
    Click Element    ${pilihSubcomponent}
    Click Element    ${clickSubComponent}
    Click Element    ${clickSubComponent}
    Sleep    3s
#    Click Element    ${pilihSubSubComponent}
    Execute JavaScript              document.evaluate("${pilihSubSubComponent}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${clickSubsubcomponent}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${clickSubsubcomponent}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element    ${clickSubsubcomponent}
#    Click Element    ${pilihSubSubComponent}
    Input Text    ${inputKegiatan}      Automation Testing
    Input Text    ${inputBudget}        2000000
    Execute JavaScript              document.evaluate("${btnLanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element    ${btnLanjut}
Input Data Kegiatan
    Click Element    ${TujuanKegiatan} 
    Input Text    ${TujuanKegiatan}     Automation Testing
    Input Text    ${descKegiatan}       Automation Testing
    Execute JavaScript              document.evaluate("${radioPenyedia}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Input Text    ${tglMulai}       2022-03-17
    Input Text    ${tglAkhir}       2022-04-17
    Input Text    ${infoLainnya}    Automation Testing
    Execute JavaScript              document.evaluate("${btnLanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Input Data Pelaksanaan 1
    Click Element    ${tambahLokasi}

    Click Element    ${pilihProvinsi}
    Wait Until Element Is Visible    ${clickAceh}   timeout=30s
    Click Element    ${clickAceh}
    Sleep    3s
    Click Element    ${clickAceh}
    Wait Until Element Is Visible    ${pilihkabkota}    timeout=30s
    Click Element    ${pilihkabkota}
    Click Element    ${combobox}
    Wait Until Element Is Visible    ${clickAcehBarat}  timeout=30s
    Click Element    ${clickAcehBarat}
    Click Element    ${btnSimpanPopup}
    Input Text    ${volumeEvent}    200
    Click Element    ${jenisKegiatan}
    Click Element    ${pilihJenisKegiatan}
    Click Element    ${pilihJenisKegiatan}
    Input Text    ${jmlnarasumber}      10
    Input Text    ${asallembaga}        pendidikan
    Input Text    ${narasumberLainnya}    fahmi
    Execute JavaScript              document.evaluate("${btnLanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Input Data Pelaksanaan 2
    Input Text    ${jmlPeserta}     500
    Input Text    ${pesertaLainnya}     fahmi
    Input Text    ${outputKegiatan}     Automation Testing
    Execute JavaScript              document.evaluate("${btnPDOI}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${pilihPDOI}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element    ${pilihPDOI}
    Execute JavaScript              document.evaluate("${btnPDOI}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element    ${btnPDOI}
    Sleep    3s
    Execute JavaScript              document.evaluate("${kontribusiIRI}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${pilihIRI}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${btnSimpan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Sleep    5s
    
    



