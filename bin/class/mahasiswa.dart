class Mahasiswa {
  String? nama;
  String? nim;
  String? jurusan;
  int? angkatan;

  // constructor
  Mahasiswa(this.nama, this.nim, this.jurusan, this.angkatan);

  // method
  void tampilkanData() {
    print('NAMA : $nama');
    print('NIM : $nim');
    print('JURUSAN : $jurusan');
    print('ANGKATAN : $angkatan');
  }
}

class AsistenDosen extends Mahasiswa {
  String? mataKuliah;

  AsistenDosen({
    required String nama,
    required String nim,
    required String jurusan,
    required int angkatan,
    required this.mataKuliah,
  }) : super(
         // super constructor ambil dari constructor mahaaiswa
         nama,
         nim,
         jurusan,
         angkatan,
       );

  // override method tampilkan data di class mahasiswa
  @override
  void tampilkanData() {
    super
        .tampilkanData(); // ambil method di parent dan gabungkan dengan yang disini
    print('MATA KULIAH : $mataKuliah');
  }
}

// abstract class pendaftaran
abstract class Pendaftaran {
  void daftar(String matkul);
}

class MahasiswaAktif extends Mahasiswa implements Pendaftaran {
  List<String> matkulDiAmbil = [];

  MahasiswaAktif({
    required String nama,
    required String nim,
    required String jurusan,
    required int angkatan,
  }) : super(nama, nim, jurusan, angkatan);

  @override // override method daftar punya nya class Pendaftaran
  void daftar(String matkul) {
    matkulDiAmbil.add(matkul);
    print('$nama mengambil mata kuliah $matkul');
  }

  @override // override method tampilkan data punya nya class Mahasiswa
  void tampilkanData() {
    super.tampilkanData();
    print('MATA KULIAH : $matkulDiAmbil');
  }
}
