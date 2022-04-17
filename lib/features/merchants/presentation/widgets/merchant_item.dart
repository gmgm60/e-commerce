import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';
import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';

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
                merchant.merchantName,
                style: Theme.of(context).textTheme.headline6,
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
