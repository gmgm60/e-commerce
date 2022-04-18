import 'package:ecommerce/features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteButton extends StatelessWidget {
  final Product product;

  const FavoriteButton({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favoriteCubit = context.read<FavoritesCubit>();
    return BlocBuilder<FavoritesCubit, FavoritesState>(
     buildWhen: (_, __) => product.id == favoriteCubit.currentId,
      builder: (context, state) {
        return IconButton(
          onPressed: () {
            if (favoriteCubit.favorites[product.id] != null) {
              favoriteCubit.removeFromFavorites(productId: product.id);
            } else {
              favoriteCubit.addToFavorites(product: product);
            }
          },
          icon: favoriteCubit.favorites[product.id] != null
              ? const Icon(Icons.favorite,color: Colors.red,)
              : const Icon(Icons.favorite_border),
        );
      },
    );
  }
}
