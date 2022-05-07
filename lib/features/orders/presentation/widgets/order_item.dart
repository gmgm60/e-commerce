import 'package:ecommerce/core/presentation/colors/colors.dart';
import 'package:ecommerce/features/orders/domain/entities/order.dart';
import 'package:ecommerce/features/orders/presentation/widgets/status_image.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    Key? key,
    required this.order,
    required this.onTap,
  }) : super(key: key);
  final Order order;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      trailing: Column(
        children: [
          StatusImage(status: order.orderStatus),
          Text(
            order.orderStatus,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .bodyText2,
          )
        ],
      ),
      title: Text(
        order.products,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,

      ),
      subtitle: Row(
        children: [
          Text(
            context.tr.totalPrice,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: appDarkBlue),
          ),
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
    );
  }
}

