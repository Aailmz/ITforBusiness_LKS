class CartItem {
  final String kodeBarang;
  final String namaBarang;
  final double hargaSatuan;
  final String satuan;
  int quantity;

  CartItem({
    required this.kodeBarang,
    required this.namaBarang,
    required this.hargaSatuan,
    required this.satuan,
    this.quantity = 1,
  });

  double get total => hargaSatuan * quantity;
}