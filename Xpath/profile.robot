*** Variables ***
${nameProfile}          //span[text()='User Administrator']
${btnProfile}           //a[contains(.,'Profile')]
${verifyProfile}        //label[text()='Profile']
${btnEdit}              //button[text()='Edit']
${btnSimpan}            //button[.='Simpan']
${btnBatal}             //button[text()='Batal']
${labelStaff}           //label[text()='Staff']
${btnTambahRole}        //button[text()=' Tambah Role ']
${btnUbahPassword}      //button[text()='Ubah Password']
${deleteRole}           (//i[contains(@class,'fa fa-trash-alt')])[2]
${verifyPageUbahPwd}    //label[text()='Password Lama']
${verifyRoleStaff}      //li[text()='Staff']
${inputPwdLama}                 //input[@placeholder='Password Sebelumnya']
${inputPwdBaru}                 //input[@placeholder='Password Baru']
${inputKonfPwd}                 //input[@placeholder='Ulangi Password']
${alertUbahPwd}                 //ngb-alert[text()='Ubah Password Berhasil !']