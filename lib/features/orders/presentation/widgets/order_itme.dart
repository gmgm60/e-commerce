import 'package:ecommerce/core/presentation/colors/colors.dart';
import 'package:ecommerce/core/presentation/widgets/app_network_image.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({Key? key, required this.product,})
      : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          SizedBox(
              width: 90,
              height: 90,
              child: AppNetworkImage(url: product.image)),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
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
                  maxLines: 1,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: appBlue),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          const Text('Pending'), // todo
        ],
      ),
    );
  }
}
