import 'package:ecommerce/core/presentation/colors/colors.dart';
import 'package:ecommerce/core/presentation/widgets/app_network_image.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          AppNetworkImage(url: product.image),
          const SizedBox(
            width: 16,
          ),
          Column(
            children: [
              Text(
                product.name,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: appDarkBlue),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${product.price}',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: appBlue),
              )
            ],
          )
        ],
      ),
    );
  }
}
