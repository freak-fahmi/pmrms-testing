*** Variables ***
${menuAdministrasi}         //a[contains(.,'Administrasi')]
${menuIzinCuti}             //a[contains(.,'Izin/Cuti')]
${menuDirektoriStaff}       //a[contains(.,'Direktori Staf')]
${menuKegiatanLuarKota}     //a[contains(.,'Kegiatan Luar Kota')]
${verifyIzinCuti}           //label[text()='Izin/Cuti']
${btnAjukanCuti}            //button[text()='Ajukan Izin/Cuti']
${verifyFormAjukanCuti}     //label[text()='Formulir Pengajuan Izin/Cuti']
${btnKembali}               //label[.='Kembali']
${btnBatal}                 //button[.='Batal']
${btnSimpan}                //button[.='Simpan']
${verifyDaftarStaff}        //label[text()='Daftar Staf']
${inputDaftarStaff}         //input[@class='form-control ng-pristine ng-valid ng-touched']
${btnCariStaff}             //button[text()='Cari']
${btnLihatDetail}           //button[text()='Lihat Detail']
${verifyStaff}              //label[text()='Iwan  Ahmad']
${verifyNamaStaff}          (//td[@class='text-start'])[2]
${verifyUnitkerja}          //td[text()='Unit Pengelola Proyek']
${verifyJabatan}            //td[text()='Staff Treasure PMU']
${verifyEditStaff}          //label[text()='Edit Iwan  Ahmad']
${btnEditStaff}             //button[text()='Edit']
${verifyKegiatanLuarKota}   //label[text()='Kegiatan Luar Kota']
${btnAjukanKegiatan}         //button[text()='Ajukan Kegiatan']
${verifyPengajuanKegiatan}   //label[text()='Formulir Pengajuan Kegiatan di Luar Kota']
${inputCari}                 //input[contains(@class,'form-control ng-untouched')]
${btnCari}                   //button[text()='Cari']