domains
nama_matkul,studi,jk,ambil,ruangan,dosen_pengajar = symbol
alamat = alamat(symbol,symbol,symbol)
dosen = nama_dosen(symbol)
ruang = ruang(symbol)
nim = nim(symbol)
nama_mahasiswa = nama(symbol)
predicates
nondeterm mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan
nondeterm cetak_mahasiswa1(nim,nama_mahasiswa,dosen,ruang,alamat)
nondeterm cetak_mahasiswa2(nim,nama_mahasiswa,dosen,ruang,alamat)
nondeterm cetak_mahasiswa3(nim,nama_mahasiswa,dosen,ruang,alamat)
nondeterm matakuliah(nama_matkul,dosen,studi,ruang)
nondeterm matakuliah_yang_diajarkan_pada_semester_tersebut(nama_matkul,nama_mahasiswa,ruangan,dosen_pengajar)
nondeterm mahasiswa(nama_matkul,nama_mahasiswa,jk,nim,alamat)
nondeterm mahasiswa1(nama_matkul,nama_mahasiswa,jk,nim,alamat)
nondeterm mahasiswa2(nama_matkul,nama_mahasiswa,jk,nim,alamat)
nondeterm mahasiswa3(nama_matkul,nama_mahasiswa,jk,nim,alamat)
clauses

mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan:-
write("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
write("\t\t\tMahasiswa Yang Mengikuti Mata Kuliah Intelegensi Buatan\t\t\n"),
write("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
write("   NIM\t\t Nama Mahasiswa\t\t Nama Dosen\tRuang\t\t\tAlamat\n"),
write("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
matakuliah(_,Nama_Dosen,_,Ruang),
mahasiswa1(_,U,_,NIM,Alamat),
mahasiswa2(_,V,_,S,P),
mahasiswa3(_,W,_,T,Q),
cetak_mahasiswa1(NIM,U,Nama_Dosen,Ruang,Alamat),
cetak_mahasiswa2(S,V,Nama_Dosen,Ruang,P),!,
cetak_mahasiswa3(T,W,Nama_Dosen,Ruang,Q),!.

cetak_mahasiswa1(nim(NIM),nama(U),nama_dosen(Dosen),ruang(Ruang),alamat(B,C,D)):-
write(NIM,"\t\t   ",U,"\t\t  ",Dosen,"\t    ",Ruang,"\t  ",B,", ", C,", ", D,"."),nl.
cetak_mahasiswa2(nim(S),nama(V),nama_dosen(Dosen),ruang(Ruang),alamat(E,F,G)):-
write(S,"\t\t   ",V,"\t\t  ",Dosen,"\t    ",Ruang,"\t  ",E," ",F," ",G,"."),nl.
cetak_mahasiswa3(nim(T),nama(W),nama_dosen(Dosen),ruang(Ruang),alamat(J,K,L)):-
write(T,"\t\t   ",W,"\t\t  ",Dosen,"\t    ",Ruang,"\t  ",J," ",K," ",L,"."),nl.

mahasiswa1("Intelegensi Buatan",nama("Sugeng Riyadi"),lakilaki,nim("2002001"),alamat("Jl. Sudirman No. 2","Pontianak","Kalimantan Barat")).
mahasiswa2("Intelegensi Buatan",nama("Yulia Sugondo"),perempuan,nim("2002002"),alamat("Jl. A. Yani No. 10","Klaten","Jawa Tengah")).
mahasiswa3("Intelegensi Buatan",nama("Budiman Sejati"),lakilaki,nim("2002003"),alamat("Jl. Slamet Riyadi No. 45","Solo","Jawa Tengah")).

mahasiswa("PDE",nama("Laksamana Sukardi"),lakilaki,nim("2002004"),alamat("Jl. MT. Haryono No. 10","Palembang","Sumatera Selatan")).
mahasiswa("PDE",nama("Rini Suwandi"),perempuan,nim("2002005"),alamat("Jl. Letjen Suprapto No. 12","Surabaya","Jawa Timur")).
mahasiswa("PDE",nama("Kwik Kian Gie"),lakilaki,nim("2002006"),alamat("Jl. WR Supratman No. 100","Makasar","Sulawesi Selatan")).

mahasiswa("Teknik Antar Muka",nama("Riri Reza"),lakilaki,nim("2002007"),alamat("Jl. RW Monginsidi No. 30","Purwokerto","Jawa Tengah")).
mahasiswa("Teknik Antar Muka",nama("Rachel Maryam"),perempuan,nim("2002008"),alamat("Jl. Otista No. 112","Bandung","Jawa Barat")).
mahasiswa("Teknik Antar Muka",nama("Garin Nugroho"),lakilaki,nim("2002009"),alamat("Jl. Tanjung Pura No. 101","Jaya Pura","Papua")).

matakuliah_yang_diajarkan_pada_semester_tersebut("Intelegensi Buatan",nama("Sugeng Riyadi"),"1","Abdul Kadir").
matakuliah_yang_diajarkan_pada_semester_tersebut("Intelegensi Buatan",nama("Yulia Sugondo"),"1","Abdul Kadir").
matakuliah_yang_diajarkan_pada_semester_tersebut("Intelegensi Buatan",nama("Budiman Sejati"),"1","Abdul Kadir\n").

matakuliah_yang_diajarkan_pada_semester_tersebut("PDE",nama("Laksamana Sukardi"),"2","Indra Yatini").
matakuliah_yang_diajarkan_pada_semester_tersebut("PDE",nama("Rini Suwandi"),"2","Indra Yatini").
matakuliah_yang_diajarkan_pada_semester_tersebut("PDE",nama("Kwik Kian Gie"),"2","Indra Yatini\n").

matakuliah_yang_diajarkan_pada_semester_tersebut("Teknik Antar Muka",nama("Riri Reza"),"3","Sigit Anggoro").
matakuliah_yang_diajarkan_pada_semester_tersebut("Teknik Antar Muka",nama("Rachel Maryam"),"3","Sigit Anggoro").
matakuliah_yang_diajarkan_pada_semester_tersebut("Teknik Antar Muka",nama("Garin Nugroho"),"3","Sigit Anggoro\n").

matakuliah("Intelegensi Buatan",nama_dosen("Abdul Kadir"),"Manajemen Informatika",ruang("1")).
matakuliah("PDE",nama_dosen("Indra Yatini"),"Teknik Informatika",ruang("2")).
matakuliah("Teknik Antar Muka",nama_dosen("Sigit Anggoro"),"Teknik Komputer",ruang("3")).
goal
mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan,nl,
write("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
write("\t\t\tMata Kuliah Yang Diajarkan Pada Semester Tersebut"),nl,
write("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
matakuliah_yang_diajarkan_pada_semester_tersebut(Mata_Kuliah,Mahasiswa,Ruangan,Dosen_Pengajar).