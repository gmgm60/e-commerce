import 'package:ecommerce/features/orders/domain/entities/order.dart';
import 'package:ecommerce/features/orders/presentation/widgets/status_image.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({Key? key, required this.order}) : super(key: key);
  final Order order;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: StatusImage(
                        status: order.orderStatus,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Row(
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
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
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
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Text(context.tr.status,
                            style: Theme.of(context).textTheme.bodyText1),
                        const SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            order.orderStatus,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Text(context.tr.products,
                            style: Theme.of(context).textTheme.bodyText1),
                        const SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            order.products,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
