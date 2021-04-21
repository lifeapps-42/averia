import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/product.dart';
import '../../../providers/products_provider.dart';
import '../../../ui_kit/custom_icon_button.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  void _deleteProduct(BuildContext context) {
    context.read(productsProvider).deleteProduct(product.id);
  }

  const ProductTile({required Key key, required this.product})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        child: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(32, 8, 32, 56),
                child: CachedNetworkImage(
                  imageUrl: product.picUrl,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: ShotIconButton(
                        icon: CupertinoIcons.delete,
                        onTap: () => _deleteProduct(context),
                      ),
                    ),
                    Text(
                      product.name,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
