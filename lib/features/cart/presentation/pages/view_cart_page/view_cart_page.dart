import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_state.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cart_details.dart';
import 'cart_item_row.dart';

class ViewCartPage extends StatefulWidget {
  const ViewCartPage({Key? key}) : super(key: key);

  @override
  State<ViewCartPage> createState() => _ViewCartPageState();
}

class _ViewCartPageState extends State<ViewCartPage> {
  late final CartCubit cartCubit;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  int _counter = 0;

  @override
  void initState() {
    cartCubit = context.read<CartCubit>()..getCart();
    super.initState();
  }

  Future _addCartItem() async {
    for(int i =0; i < cartCubit.cart.length; i ++){
      await Future.delayed(const Duration(milliseconds: 400));
      _counter++;
      _listKey.currentState!.insertItem(_counter-1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CartCubit, CartState>(
          buildWhen: (_, __) => cartCubit.editedProductId == -1,
          builder: (context, state) {
            _addCartItem();
            return state.map(
              init: (_) => const CircularProgressIndicator(),
              loading: (_) => const CircularProgressIndicator(),
              error: (error) => Text(error.errMsg),
              done: (_) => ListView(
                children: [
                  AnimatedList(
                    key: _listKey,
                      primary: false,
                      shrinkWrap: true,
                      initialItemCount: _counter,
                      itemBuilder: (context, index, animation) =>
                          AnimatedCartRow(
                            cartItem: cartCubit.cart.values.elementAt(index),
                            index: index, animation: animation,
                          )),
                  const CartDetails(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
