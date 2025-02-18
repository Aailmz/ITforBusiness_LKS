class Product {
  final String idBarang;
  final String kodeBarang;
  final String namaBarang;
  final int jumlahBarang;
  final String satuan;
  final double hargaSatuan;
  final String expiredDate;

  Product({
    required this.idBarang,
    required this.kodeBarang,
    required this.namaBarang,
    required this.jumlahBarang,
    required this.satuan,
    required this.hargaSatuan,
    required this.expiredDate,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      idBarang: json['id_barang'].toString(),
      kodeBarang: json['kode_barang'].toString(),
      namaBarang: json['nama_barang'].toString(),
      jumlahBarang: int.parse(json['jumlah_barang'].toString()),
      satuan: json['satuan'].toString(),
      hargaSatuan: double.parse(json['harga_satuan'].toString()),
      expiredDate: json['expired_date'].toString(),
    );
  }
}