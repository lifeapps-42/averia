import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product.dart';

ChangeNotifierProvider<ProductsProvider> productsProvider =
    ChangeNotifierProvider((ref) => ProductsProvider());

abstract class IProductsProvider {
  List<Product>? getProducts();
  void deleteProduct(String id);
  void addRandomProduct();
}

class ProductsProvider with ChangeNotifier implements IProductsProvider {
  List<Product>? _products;

  @override
  void addRandomProduct() {
    if (_products != null) {
      _products!.insert(0, Product.random());
      print(_products!.length);
      notifyListeners();
    }
  }

  @override
  void deleteProduct(String id) {
    _products!.removeWhere((_p) => _p.id == id);
    print(_products!.length);
    notifyListeners();
  }

  @override
  List<Product>? getProducts() {
    if (_products == null) {
      _generate1000Products().then((_list) => _addToList(_list));
      return null;
    }
    return [..._products!];
  }

  Future<List<Product>> _generate1000Products() async {
    return List.generate(1000, (_) => Product.random());
  }

  void _addToList(List<Product> list) {
    if (_products == null) _products = [];
    _products!.addAll(list);
    print(_products!.length);
    notifyListeners();
  }
}
