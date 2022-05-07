import 'package:ecommerce/features/favorites/presentation/cubit/favorites_cubit/favorites_cubit.dart';
import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteButton extends StatefulWidget {
  final Product product;

  const FavoriteButton({Key? key, required this.product}) : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>
    with SingleTickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    final favoritesCubit = context.read<FavoritesCubit>();
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      buildWhen: (_, __) => widget.product.id == favoritesCubit.currentId || favoritesCubit.refreshAll,
      builder: (context, state) {
        return Heart(
          product: widget.product,
        );
      },
    );
  }
}

class Heart extends StatefulWidget {
  final Product product;
  const Heart({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Color?> _colorAnimation;
  late final Animation<double> _sizeAnimation;
  late final CurvedAnimation _curve;
  late final FavoritesCubit favoritesCubit;
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    favoritesCubit = context.read<FavoritesCubit>();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));

    _curve = CurvedAnimation(parent: _controller, curve: Curves.slowMiddle);

    isFavorite = favoritesCubit.favorites[widget.product.id] != null;
      _colorAnimation =
          ColorTween(begin: Colors.black26, end: Colors.red).animate(_curve);


    _sizeAnimation = TweenSequence<double>([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 30, end: 50), weight: 50),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 50, end: 30), weight: 50),
    ]).animate(_curve);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    isFavorite = favoritesCubit.favorites[widget.product.id] != null;
    isFavorite == true ? _controller.forward() : _controller.reverse();
    return IconButton(
      icon: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget? child) {
          return Icon(
            Icons.favorite,
            color: _colorAnimation.value,
            size: _sizeAnimation.value,
          );
        },
      ),
      onPressed: () {
        if (isFavorite) {
          // remove from favorites
          // isFavorite = false;
          favoritesCubit
              .removeFromFavorites(productId: widget.product.id);
          _controller.reverse();
        } else {
          // add to favorite
          // isFavorite = true;
          favoritesCubit.addToFavorites(product: widget.product);
          _controller.forward();
        }
      },
    );
  }
}
