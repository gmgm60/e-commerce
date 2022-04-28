import 'package:ecommerce/core/presentation/widgets/product_grid_item.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';

class MerchantDetailsPage extends StatelessWidget {
  const MerchantDetailsPage({Key? key, required this.merchant})
      : super(key: key);
  final Merchant merchant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  merchant.name,
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      context.tr.phone,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      merchant.phone,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.tr.address,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Text(
                        merchant.address,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            primary: false,
            crossAxisCount: 2,
            physics: const BouncingScrollPhysics(),
            childAspectRatio: .6,
            children: List.generate(
              merchant.products.length,
              (index) => ProductGridItem(
                product: merchant.products[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
