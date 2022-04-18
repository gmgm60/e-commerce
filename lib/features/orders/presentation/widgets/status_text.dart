import 'package:ecommerce/core/presentation/colors/colors.dart';
import 'package:flutter/material.dart';

enum OrderStatus { pending, shipped, delivered }

class StatusText extends StatelessWidget {
  const StatusText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: getStatusColor(text),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(color: Colors.white),
      ),
    );
  }

  Color getStatusColor(String status) {
    if (status.toLowerCase() == 'pending') {
      return appYellow;
    } else if (status.toLowerCase() == 'shipped') {
      return Colors.deepOrangeAccent;
    } else if (status.toLowerCase() == 'delivered') {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }
}
