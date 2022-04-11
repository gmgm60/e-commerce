import 'package:ecommerce/di/injectable.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:ecommerce/features/products/presentation/cubit/products_cubit/products_cubit.dart';
import 'package:ecommerce/features/products/presentation/cubit/products_cubit/products_state.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductsCubit>()..getProducts(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(context.tr.productsTitle),
          ),
          body: BlocBuilder<ProductsCubit, ProductsState>(
            builder: (context, state) {
              print("state : $state");
              print("state : ${context.read<ProductsCubit>().products.length}");
              return GridView.count(crossAxisCount: 2,childAspectRatio: .5,
              children: context.read<ProductsCubit>().products.map((product) => ProductRow(product: product)).toList(),
              );
            },
          ),
        );
      }),
    );
  }
}

class ProductRow extends StatelessWidget {
  final Product product;
  const ProductRow({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrain) {
        final double width = constrain.maxWidth ;
        final double height = constrain.maxHeight ;
       // print(constrain.maxHeight.toString() +"," +constrain.maxWidth.toString());
        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Image.network(
                product.image,
                width: width * .8,
                height: height*.7,
                fit: BoxFit.contain,
              ),
              Text(product.name),
              Text(product.price.toString()),
            ],
          ),
        );
      }
    );
  }
}
