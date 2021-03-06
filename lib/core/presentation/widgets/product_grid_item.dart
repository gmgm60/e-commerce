import 'package:ecommerce/core/presentation/cubit/back_button_cubit/back_button_cubit.dart';
import 'package:ecommerce/core/presentation/widgets/app_network_image.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:ecommerce/features/products/presentation/pages/product_page/product_page.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'favorite_button.dart';

class ProductGridItem extends StatelessWidget {
  final Product product;
  final bool showAppBar;

  const ProductGridItem(
      {Key? key, required this.product, this.showAppBar = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      final double width = constrain.maxWidth;
      final double height = constrain.maxHeight;
      return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
              const begin = Offset(-1.0, 0.0);
              const end = Offset.zero;
              const curve = Curves.ease;
              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              return SlideTransition(
                position: animation.drive(tween),
                child:
                    ProductPage(productId: product.id, showAppBar: showAppBar),
              );
            }),
          );
          context.read<BackButtonCubit>().refresh();
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: AppNetworkImage(
                      url: product.image,
                      width: width,
                      height: height * .5,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(product.name,
                      style: Theme.of(context).textTheme.headline6,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2),
                ),
                const Expanded(child: Text("")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        (product.newPrice).toStringAsFixed(1) +
                            context.tr.currency,
                        style: Theme.of(context).textTheme.headline6),
                    FavoriteButton(product: product),
                  ],
                ),
                Row(
                  children: [
                    Text(product.price.toStringAsFixed(1) + context.tr.currency,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              decoration: TextDecoration.lineThrough,
                            )),
                    const SizedBox(width: 10),
                    Text(
                      product.percentage.toString() + context.tr.off,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
