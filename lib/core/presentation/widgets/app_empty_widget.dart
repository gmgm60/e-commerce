import 'package:ecommerce/l10n/l10n.dart';
import 'package:flutter/material.dart';

class AppEmptyWidget extends StatelessWidget {
  const AppEmptyWidget({
    Key? key,
    this.message,
  }) : super(key: key);
  final String? message;

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
            message ?? context.tr.noDataToShow,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.blueGrey),
          )
        ],
      ),
    );
  }
}
