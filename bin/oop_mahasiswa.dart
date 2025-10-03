import 'class/mahasiswa.dart';

void main() {
  print('MAHASISWA');
  var maha = Mahasiswa('Dandi', '1123150054', 'Teknik Informatika', 2023);
  maha.tampilkanData();

  print('\nASISTEN DOSEN');
  var asdos = AsistenDosen(
    nama: 'beril icikiwir ',
    nim: '1123150011',
    jurusan: 'Teknik hipnosis',
    angkatan: 2022,
    mataKuliah: 'Pemrograman berbasis maling',
  );
  asdos.tampilkanData();

  print('\nMAHASISWA AKTIF');
  var mahaAktif = MahasiswaAktif(
    nama: 'felan cogil',
    nim: '11231250012',
    jurusan: 'Sastra mesin',
    angkatan: 2021,
  );
  mahaAktif.daftar('Cara Menjadi cogil');
  mahaAktif.daftar('kulu kulu');
  mahaAktif.daftar('this is cogil');
  mahaAktif.tampilkanData();
}
