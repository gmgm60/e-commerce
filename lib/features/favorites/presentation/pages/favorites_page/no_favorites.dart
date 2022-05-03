import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';

class NoFavorites extends StatelessWidget {
  const NoFavorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        const Icon(Icons.heart_broken,size: 150,color: Colors.black12,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(child: Text(context.tr.noFavoritesYet,style: Theme.of(context).textTheme.headline4,)),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(context.tr.noFavoritesText,style: Theme.of(context).textTheme.headline5,),
        ),
      ],
    );
  }
}
