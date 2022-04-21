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
  late final AnimationController _controller;
  late final Animation<Color?> _colorAnimation;
  late final Animation<double> _sizeAnimation;
  late final CurvedAnimation _curve;
  late final FavoritesCubit favoritesCubit;

  @override
  void initState() {
    _controller = AnimationController(
        duration: const Duration(microseconds: 1000), vsync: this);

    _curve = CurvedAnimation(parent: _controller, curve: Curves.slowMiddle);

    favoritesCubit = context.read<FavoritesCubit>();

    if (favoritesCubit.favorites[widget.product.id] != null) {
      _colorAnimation = ColorTween(begin: Colors.red, end: Colors.black26)
          .animate(_controller);
    } else {
      _colorAnimation = ColorTween(begin: Colors.black26, end: Colors.red)
          .animate(_controller);
    }

    _sizeAnimation = TweenSequence<double>([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 30, end: 50), weight: 50),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 50, end: 30), weight: 50),
    ]).animate(_controller);

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<FavoritesCubit, FavoritesState>(
          buildWhen: (_, __) => widget.product.id == favoritesCubit.currentId,
          builder: (context, state) {
            return Row(
              children: [
                 Heart(product: widget.product,),
                IconButton(
                    onPressed: () {
                      if (favoritesCubit.favorites[widget.product.id] != null) {
                        _controller.reverse();
                        favoritesCubit.removeFromFavorites(
                            productId: widget.product.id);
                      } else {
                        _controller.forward();
                        favoritesCubit.addToFavorites(product: widget.product);
                      }
                    },
                    icon: AnimatedBuilder(
                      builder: (BuildContext context, _) {
                        return Icon(Icons.favorite,
                            color: _colorAnimation.value,
                            size: _sizeAnimation.value);
                      },
                      animation: _controller,
                    )),
              ],
            );
          },
        ),
      ],
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

    isFavorite = favoritesCubit.favorites[widget.product.id] != null ? true : false;
    if (isFavorite) {
      _colorAnimation =
          ColorTween(begin: Colors.red, end: Colors.black26).animate(_curve);
    } else {
      _colorAnimation =
          ColorTween(begin: Colors.black26, end: Colors.red).animate(_curve);
    }

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
          isFavorite = false;
          favoritesCubit.removeFromFavorites(productId: widget.product.id).then((_) {
            isFavorite = favoritesCubit.favorites[widget.product.id] != null ? true : false;
          });
          _controller.reverse();
        } else {
          isFavorite = true;
          favoritesCubit.addToFavorites(product: widget.product).then((_) {
            isFavorite = favoritesCubit.favorites[widget.product.id] != null ? true : false;
          });
          _controller.forward();
        }
      },
    );
  }
}
