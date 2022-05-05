import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/presentation/widgets/app_elevated_button.dart';
import 'package:ecommerce/core/presentation/widgets/app_text_form_field.dart';
import 'package:ecommerce/features/cart/domain/entities/cart_item/cart_item.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:ecommerce/features/cart/presentation/cubit/cart_cubit/cart_state.dart';
import 'package:ecommerce/features/cart/presentation/pages/view_cart_page/cart_details.dart';
import 'package:ecommerce/features/profile/presentation/bloc/profile_cubit/profile_cubit.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// table flex width
const f1 = 6;
const f2 = 3;
const f3 = 3;
const f4 = 2;

class ConfirmOrderPage extends StatefulWidget {
  const ConfirmOrderPage({Key? key}) : super(key: key);

  @override
  State<ConfirmOrderPage> createState() => _ConfirmOrderPageState();
}

class _ConfirmOrderPageState extends State<ConfirmOrderPage> {
  String address = 'No Address';
  late TextEditingController _addressController;

  @override
  void initState() {
    _addressController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final CartCubit cartCubit = context.read<CartCubit>();
    final List<CartItem> cartItems = cartCubit.cart.values.toList();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: f1,
                    child: Text(
                      context.tr.productName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )),
                const Expanded(child: SizedBox()),
                Expanded(
                    flex: f2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(context.tr.price,
                            maxLines: 1, overflow: TextOverflow.ellipsis),
                        Text('(' + context.tr.currency + ')',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.caption)
                      ],
                    )),
                Expanded(
                    flex: f3,
                    child: Text(
                      context.tr.count,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )),
                Expanded(
                    flex: f4,
                    child: Text(
                      context.tr.total,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )),
              ],
            ),
            const SizedBox(height: 10),
            ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (BuildContext context, int index) {
                  return ConfirmOrderItem(
                    cartItem: cartItems[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.black12,
                      width: double.infinity,
                      height: 1,
                    ),
                  );
                },
                itemCount: cartItems.length),
            const CartDetails(),
            const SizedBox(
              height: 10,
            ),
            AppTextFormField(
                controller: _addressController,
                validate: (value) {},
                inputType: TextInputType.streetAddress,
                label: context.tr.address),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
                  state.mapOrNull(done: (doneState) {
                    if (doneState.refresh == -100) {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext _) {
                            return AlertDialog(
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(context.tr.orderSuccess),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    AppElevatedButton(
                                        onPressed: () async {
                                          await AutoRouter.of(context).pop();
                                          AutoRouter.of(context).pop();
                                        },
                                        text: context.tr.ok)
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ));
                          });
                    }
                  }, error: (errorState) {
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext _) {
                          return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(context.tr.orderFailed),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  AppElevatedButton(
                                      onPressed: () async {
                                        AutoRouter.of(_).pop();
                                      },
                                      text: context.tr.ok)
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ));
                        });
                  });
                });

                return AppElevatedButton(
                  onPressed: () {
                    cartCubit.confirmOrder(address: _addressController.text);
                  },
                  text: context.tr.confirm,
                  isLoading: state is Loading,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class ConfirmOrderItem extends StatelessWidget {
  final CartItem cartItem;

  const ConfirmOrderItem({Key? key, required this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            flex: f1,
            child: Text(
              cartItem.product.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )),
        const Expanded(child: SizedBox()),
        Expanded(
            flex: f2,
            child: Text(
              cartItem.product.price.toStringAsFixed(1),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )),
        Expanded(
            flex: f3,
            child: Text(
              cartItem.count.toString(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )),
        Expanded(
            flex: f4,
            child: Text(
              (cartItem.product.price * cartItem.count).toStringAsFixed(0),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )),
      ],
    );
  }
}
