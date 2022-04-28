import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MerchantItem extends StatelessWidget {
  const MerchantItem({Key? key, required this.merchant, required this.onTap})
      : super(key: key);
  final Merchant merchant;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                merchant.name,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 4,
              ),
              RatingBar.builder(
                initialRating: merchant.rating,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  // todo
                  debugPrint(rating.toString());
                },
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    context.tr.products,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    '${merchant.products.length}',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    context.tr.phone,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    merchant.phone,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.tr.address,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Text(
                      merchant.address,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
