import 'package:ecommerce/features/orders/domain/entities/order.dart';
import 'package:ecommerce/features/products/presentation/pages/products_page/products_page.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({Key? key, required this.order}) : super(key: key);
  final Order order;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(context.tr.customerId,
                    style: Theme.of(context).textTheme.bodyText1),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Text(
                    '${order.customerId}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(context.tr.address,
                    style: Theme.of(context).textTheme.bodyText1),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Text(
                    order.address,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(context.tr.totalPrice,
                    style: Theme.of(context).textTheme.bodyText1),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Text(
                    order.totalPrice,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(context.tr.products,
                style: Theme.of(context).textTheme.headline6),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: GridView.count(
                crossAxisCount: 2,
                physics: const BouncingScrollPhysics(),
                childAspectRatio: .6,
                children: List.generate(
                  order.products.length,
                  (index) => ProductRow(
                    product: order.products[index],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
