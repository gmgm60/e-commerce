import 'package:ecommerce/core/presentation/widgets/app_network_image.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';

class MerchantDetailsPage extends StatelessWidget {
  const MerchantDetailsPage({Key? key, required this.merchant})
      : super(key: key);
  final Merchant merchant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
         // mainAxisSize: MainAxisSize.min,
         // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              merchant.merchantName,
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
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.tr.productsTitle,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Text(
                    '${merchant.products.length}',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              flex: 1,
              child: ListView.builder(
                shrinkWrap: true,
                  primary: false,
                 // physics: const BouncingScrollPhysics(),
                  itemCount: merchant.products.length,
                  itemBuilder: (context, index) {
                    return ProductItem(
                      product: merchant.products[index],
                      onTap: () {
                        //todo
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key, required this.product, required this.onTap})
      : super(key: key);
  final Product product;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              SizedBox(
                  width: 80,
                  height: 80,
                  child: AppNetworkImage(url: product.image)),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      product.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${product.price}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
