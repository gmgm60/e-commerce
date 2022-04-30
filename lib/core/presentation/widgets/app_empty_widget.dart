import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';

class AppEmptyWidget extends StatelessWidget {
  const AppEmptyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/empty.gif',
            width: 250,
            height: 250,
          ),
          Text(
            context.tr.noDataToShow,
            style: Theme.of(context).textTheme.titleLarge,
          )
        ],
      ),
    );
  }
}
