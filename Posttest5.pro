domains
nama_matkul,studi,jk,ambil,nim,nama_mahasiswa,ruangan,dosen_pengajar = symbol
alamat = alamat(symbol,symbol,symbol)
dosen = nama_dosen(symbol)
ruang = ruang(symbol)
predicates
nondeterm mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan
nondeterm cetak_mahasiswa(nim,nama_mahasiswa,dosen,ruang,alamat)
nondeterm matakuliah(nama_matkul,dosen,studi,ruang)
nondeterm matakuliah_yang_diajarkan_pada_semester_tersebut(nama_matkul,nama_mahasiswa,ruangan,dosen_pengajar)
nondeterm mahasiswa(nama_matkul,nama_mahasiswa,jk,nim,alamat)
clauses

mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan:-
write("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
write("\t\t\tMahasiswa Yang Mengikuti Mata Kuliah Intelegensi Buatan\t\t\n"),
write("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
write("   NIM\t\t Nama Mahasiswa\t\t Nama Dosen\tRuang\t\t\tAlamat\n"),
write("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
matakuliah(_,Nama_Dosen,_,Ruang),
cetak_mahasiswa(nim,nama_mahasiswa,Nama_Dosen,Ruang,alamat(symbol,symbol,symbol)),!.
cetak_mahasiswa(nim,nama_mahasiswa,nama_dosen(Dosen),ruang(Ruang),alamat(symbol,symbol,symbol)):-
write("2002001","\t\t   ","Sugeng Riyadi","\t\t  ",Dosen,"\t    ",Ruang,"\t  ","Jl. Sudirman No. 2",", Pontianak",", Kalimantan Barat"),nl,
write("2002002","\t\t   ","Yulia Sugondo","\t\t  ",Dosen,"\t    ",Ruang,"\t  ","Jl. A. Yani No. 10",", Klaten",", Jawa Tengah"),nl,
write("2002003","\t\t   ","Budiman Sejati","\t\t  ",Dosen,"\t    ",Ruang,"\t  ","Jl. Slamet Riyadi No. 45",", Solo",", Jawa Tengah"),nl.

mahasiswa("Intelegensi Buatan","Sugeng Riyadi",lakilaki,"2002001",alamat("Jl. Sudirman No. 2","Pontianak","Kalimantan Barat")).
mahasiswa("Intelegensi Buatan","Yulia Sugondo",perempuan,"2002002",alamat("Jl. A. Yani No. 10","Klaten","Jawa Tengah")).
mahasiswa("Intelegensi Buatan","Budiman Sejati",lakilaki,"2002003",alamat("Jl. Slamet Riyadi No. 45","Solo","Jawa Tengah")).

mahasiswa("PDE","Laksamana Sukardi",lakilaki,"2002004",alamat("Jl. MT. Haryono No. 10","Palembang","Sumatera Selatan")).
mahasiswa("PDE","Rini Suwandi",perempuan,"2002005",alamat("Jl. Letjen Suprapto No. 12","Surabaya","Jawa Timur")).
mahasiswa("PDE","Kwik Kian Gie",lakilaki,"2002006",alamat("Jl. WR Supratman No. 100","Makasar","Sulawesi Selatan")).

mahasiswa("Teknik Antar Muka","Riri Reza",lakilaki,"2002007",alamat("Jl. RW Monginsidi No. 30","Purwokerto","Jawa Tengah")).
mahasiswa("Teknik Antar Muka","Rachel Maryam",perempuan,"2002008",alamat("Jl. Otista No. 112","Bandung","Jawa Barat")).
mahasiswa("Teknik Antar Muka","Garin Nugroho",lakilaki,"2002009",alamat("Jl. Tanjung Pura No. 101","Jaya Pura","Papua")).

matakuliah_yang_diajarkan_pada_semester_tersebut("Intelegensi Buatan","Sugeng Riyadi","1","Abdul Kadir").
matakuliah_yang_diajarkan_pada_semester_tersebut("Intelegensi Buatan","Yulia Sugondo","1","Abdul Kadir").
matakuliah_yang_diajarkan_pada_semester_tersebut("Intelegensi Buatan","Budiman Sejati","1","Abdul Kadir\n").

matakuliah_yang_diajarkan_pada_semester_tersebut("PDE","Laksamana Sukardi","2","Indra Yatini").
matakuliah_yang_diajarkan_pada_semester_tersebut("PDE","Rini Suwandi","2","Indra Yatini").
matakuliah_yang_diajarkan_pada_semester_tersebut("PDE","Kwik Kian Gie","2","Indra Yatini\n").

matakuliah_yang_diajarkan_pada_semester_tersebut("Teknik Antar Muka","Riri Reza","3","Sigit Anggoro").
matakuliah_yang_diajarkan_pada_semester_tersebut("Teknik Antar Muka","Rachel Maryam","3","Sigit Anggoro").
matakuliah_yang_diajarkan_pada_semester_tersebut("Teknik Antar Muka","Garin Nugroho","3","Sigit Anggoro\n").

matakuliah("Intelegensi Buatan",nama_dosen("Abdul Kadir"),"Manajemen Informatika",ruang("1")).
matakuliah("PDE",nama_dosen("Indra Yatini"),"Teknik Informatika",ruang("2")).
matakuliah("Teknik Antar Muka",nama_dosen("Sigit Anggoro"),"Teknik Komputer",ruang("3")).
goal
mahasiswa_yang_mengikuti_matakuliah_intelegensi_buatan,nl,
write("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
write("\t\t\tMata Kuliah Yang Diajarkan Pada Semester Tersebut"),nl,
write("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,
matakuliah_yang_diajarkan_pada_semester_tersebut(Mata_Kuliah,Mahasiswa,Ruangan,Dosen_Pengajar).