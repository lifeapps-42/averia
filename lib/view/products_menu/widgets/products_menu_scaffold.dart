import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/products_provider.dart';
import '../../../models/product.dart';
import './products_list.dart';
import '../../../ui_kit/ui_kit.dart';

class ProductsMenu extends ConsumerWidget {
  void _addRandomProduct(BuildContext context) =>
      context.read(productsProvider).addRandomProduct();
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    ProductsProvider _productsProvider = watch(productsProvider);
    List<Product>? _products = _productsProvider.getProducts();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Меню',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: ShotIconButton(
                icon: CupertinoIcons.add,
                onTap: () => _addRandomProduct(context),
              ),
            ),
          ),
        ],
      ),
      body: _products == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ProductsList(productsList: _products),
    );
  }
}
