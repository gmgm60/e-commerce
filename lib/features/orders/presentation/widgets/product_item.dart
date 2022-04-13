import 'package:ecommerce/core/presentation/widgets/app_network_image.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({required this.product, Key? key}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
              width: 60,
              height: 60,
              child: AppNetworkImage(url: product.image)),
          const SizedBox(
            height: 4,
          ),
          Text(
            product.name,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            product.name,
            style: Theme.of(context).textTheme.subtitle1,
          ),

        ],
      ),
    );
  }
}
