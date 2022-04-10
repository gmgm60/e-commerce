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
              return ListView.builder(
                  itemCount: context.read<ProductsCubit>().products.length,
                  itemBuilder: (BuildContext context, index) => ProductRow(
                        product: context.read<ProductsCubit>().products[index],
                      ));
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
    return Card(
      child: Column(
        children: [
          Text(product.name),
          Text(product.price.toString()),
          Image.network(
            product.image,
            width: 300,
            height: 200,
            fit: BoxFit.contain,
          ),
          Text(product.description),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
