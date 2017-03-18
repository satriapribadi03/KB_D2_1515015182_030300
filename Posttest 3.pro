domains
mahasiswa,matkul,nilai,matakuliah = symbol

predicates
nondeterm ambil(mahasiswa,matkul,nilai)
nondeterm sedia(matakuliah)

clauses

% yang mengambil matakuliah ib
ambil("Ifran",ib,a).
ambil("Komeng",ib,d).
ambil("Dati",ib,c).
ambil("Fatima",ib,b).
ambil("Maspion",ib,c).

% yang mengambil matakuliah pde
ambil("Ricky",pde,e).
ambil("Embang",pde,a).
ambil("Salmin",pde,d).
ambil("Vina",pde,b).
ambil("Sondang",pde,c).

% yang mengambil matakuliah so
ambil("Pamuji",so,d).
ambil("Luki",so,e).
ambil("Sadek",so,b).
ambil("Yusida",so,a).
ambil("Eka",so,a).

sedia("Intelejensi Buatan").
sedia("PDE").
sedia("Sistem Operasi").
goal
write("a. Yang Mengikuti Intelejensi Buatan\n"),nl,
ambil(Nama_Mahasiswa,ib,_);nl,

write("\nb. Mahasiswa Yang Tidak Lulus\n"),nl,
ambil(Tidak_lulus,_,d);ambil(Tidak_lulus,_,e);nl,

write("\nc. Mahasiswa Yang Lulus\n"),nl,
ambil(Lulus,_,a);ambil(Lulus,_,b);ambil(Lulus,_,c);nl,

write("\nd. Matakuliah Yang Diajarkan\n"),nl,
sedia(Matakuliah);nl,

write("\ne. Mahasiswa Yang Ada\n"),nl,
ambil(Mahasiswa,_,_).