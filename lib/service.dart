// ignore_for_file: public_member_api_docs, sort_constructors_first
class Produk {
  final String nama;
  final int harga;
  final String assets;
  Produk({
    required this.nama,
    required this.harga,
    required this.assets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nama': nama,
      'harga': harga,
      'assets': assets,
    };
  }

  factory Produk.fromMap(Map<String, dynamic> json) {
    return Produk(
      nama: json['nama'],
      harga: json['harga'],
      assets: json['assets'],
    );
  }
}
