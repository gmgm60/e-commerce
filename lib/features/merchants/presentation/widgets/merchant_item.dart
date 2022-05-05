import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MerchantItem extends StatelessWidget {
  const MerchantItem({Key? key, required this.merchant, required this.onTap})
      : super(key: key);
  final Merchant merchant;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        merchant.name,
        style: Theme.of(context).textTheme.headline6,
      ),
      subtitle: Text(
        merchant.description,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.subtitle2,
      ),
      trailing: RatingBar.builder(
        initialRating: merchant.rate,
        minRating: 0,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        itemSize: 20,
        ignoreGestures: true,
        onRatingUpdate: (rating) {
          // todo
          debugPrint(rating.toString());
        },
      ),
      onTap: onTap,
    );
  }
}
