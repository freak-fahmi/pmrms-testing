*** Variables ***
${menuAwp}             (//a[@id='topnav-components'])[2]
${verifyAwp}           //label[text()='AWP']
${searchAwp}           //input[contains(@class,'form-control ng-untouched')]
${verifySearch}        //td[text()='Penyusunan Modul Pustakawan']
${verifySearchPaguAnggran}      //td[text()='Rp. 200.000.000']
${verifySearchKomponen}         //td[text()='Kelompok Kerja Guru � Tingkat Kecamatan. ']
${verifyNoData}                 //td[text()='No data!']
${pagination}          //a[.='2']
${verfyPagination}     //td[text()='Penyusunan Modul Laboran']
${btnCari}             //button[text()='Cari']