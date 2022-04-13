import 'package:ecommerce/core/presentation/widgets/app_network_image.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:flutter/material.dart';

class MerchantItem extends StatelessWidget {
  const MerchantItem({Key? key, required this.merchant}) : super(key: key);
  final Merchant merchant;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(merchant.merchantName),
          const SizedBox(
            height: 4,
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
                itemCount: merchant.products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ProductItem(
                      product: merchant.products[index],
                    )),
          )
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: 80, height: 80, child: AppNetworkImage(url: product.image)),
        const SizedBox(
          height: 4,
        ),
        Text(product.name)
      ],
    );
  }
}
