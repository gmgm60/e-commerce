import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewCartPage extends StatefulWidget {
  const ViewCartPage({Key? key}) : super(key: key);

  @override
  State<ViewCartPage> createState() => _ViewCartPageState();
}

class _ViewCartPageState extends State<ViewCartPage> {
  late final CartCubit cartCubit;

  @override
  void initState() {
    cartCubit = context.read<CartCubit>()..getCart();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr.yourCart),
      ),
      body: ListView(
        children: [
          ...List.generate(
              cartCubit.cart.length,
              (index) => CartItemRow(
                  cartItem: cartCubit.cart.values.elementAt(index))),
        ],
      ),
    );
  }
}

class CartItemRow extends StatelessWidget {
  final CartItem cartItem;

  const CartItemRow({Key? key, required this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  cartItem.product.image,
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                          child: Text(
                        cartItem.product.name,
                        style: Theme.of(context).textTheme.headline6,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                      const Spacer(),
                      Text(
                        cartItem.product.price.toStringAsFixed(2),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                //TODO add to favorite
                              },
                              icon: const Icon(Icons.favorite_border)),
                          IconButton(
                              onPressed: () {
                                //TODO remove from cart
                              },
                              icon: const Icon(Icons.delete_outline)),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Container(
                              width: 40,
                              height: 30,
                              color: Colors.black12,
                              child: TextButton(onPressed: (){
                                //TODO --
                              }, child: const Text("-"),style: ButtonStyle())),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text("50"),
                          ),
                          Container(
                              width: 40,
                              height: 30,
                              color: Colors.black12,
                              child: TextButton(onPressed: (){
                                //TODO ++
                              }, child: const Text("+"),style: ButtonStyle())),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
