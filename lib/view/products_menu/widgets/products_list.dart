import 'package:flutter/material.dart';

import '../../../models/product.dart';
import './product_tile.dart';

class ProductsList extends StatelessWidget {
  final List<Product> productsList;

  const ProductsList({Key? key, required this.productsList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      itemCount: productsList.length,
      itemBuilder: (context, i) => ProductTile(
        product: productsList[i],
        key: Key(productsList[i].id),
      ),
    );
  }
}
