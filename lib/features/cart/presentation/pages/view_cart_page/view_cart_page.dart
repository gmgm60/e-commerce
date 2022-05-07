import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/routes/app_routes.gr.dart';
import 'package:ecommerce/core/presentation/widgets/app_elevated_button.dart';
import 'package:ecommerce/core/presentation/widgets/app_error_widget.dart';
import 'package:ecommerce/core/presentation/widgets/list_shimmer.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_state.dart';
import 'package:ecommerce/generated/assets.dart';
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

  @override
  void initState() {
    cartCubit = context.read<CartCubit>()..getCart();
    super.initState();
  }

  Future _addCartItem() async {
    for (int i = cartCubit.animatedListCount; i < cartCubit.cart.length; i++) {
      await Future.delayed(const Duration(milliseconds: 400));
      cartCubit.animatedListCount++;
      _listKey.currentState!.insertItem(cartCubit.animatedListCount - 1);
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
            return RefreshIndicator(
              onRefresh: () async{
               await cartCubit.getCart();
              },
              child: ListView(
                children: [
                  state.map(
                    init: (_) => const ListShimmer(),
                    loading: (_) => const ListShimmer(),
                    error: (error) => AppErrorWidget(error: error.errMsg),
                    done: (_) => ListView(
                      shrinkWrap: true,
                      primary: false,
                      children: [
                        AnimatedList(
                            key: _listKey,
                            primary: false,
                            shrinkWrap: true,
                            initialItemCount: cartCubit.animatedListCount,
                            itemBuilder: (context, index, animation) =>
                                AnimatedCartRow(
                                  cartItem: cartCubit.cart.values.elementAt(index),
                                  index: index,
                                  animation: animation,
                                )),
                        if(cartCubit.cart.isNotEmpty)
                        Column(
                          children: [
                            const CartDetails(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AppElevatedButton(
                                  onPressed: () {
                                    AutoRouter.of(context)
                                        .push(const ConfirmOrderRoute());
                                  },
                                  text: context.tr.checkout),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                        if(cartCubit.cart.isEmpty)
                          Image.asset(Assets.imagesShoppingCart,color: Colors.amber,),


                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
