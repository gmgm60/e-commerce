import 'package:ecommerce/features/orders/presentation/widgets/order_itme.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
          return OrderItem(
            product: Product(discount: 202,
              id: 1,
              catId: 1,
              name: 'Product1',
              description: 'description',
              image: 'image',
              price: 220,
              isAvailable: true,
            ),
            onRemoved: (){},
          );
        }),
      ),
    );
  }
}
