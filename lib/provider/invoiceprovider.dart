import 'package:flutter/foundation.dart';
import 'package:latihan_lks/model/invoicemodel.dart';

class CartProvider with ChangeNotifier {
  final Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => {..._items};

  int get itemCount => _items.length;

  double get totalAmount {
    double total = 0.0;
    _items.forEach((key, item) {
      total += item.total;
    });
    return total;
  }

  void addItem(String kodeBarang, String namaBarang, double hargaSatuan, String satuan) {
    if (_items.containsKey(kodeBarang)) {
      _items.update(
        kodeBarang,
        (existingItem) => CartItem(
          kodeBarang: existingItem.kodeBarang,
          namaBarang: existingItem.namaBarang,
          hargaSatuan: existingItem.hargaSatuan,
          satuan: existingItem.satuan,
          quantity: existingItem.quantity + 1,
        ),
      );
    } else {
      _items.putIfAbsent(
        kodeBarang,
        () => CartItem(
          kodeBarang: kodeBarang,
          namaBarang: namaBarang,
          hargaSatuan: hargaSatuan,
          satuan: satuan,
        ),
      );
    }
    notifyListeners();
  }

  void removeItem(String kodeBarang) {
    _items.remove(kodeBarang);
    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}