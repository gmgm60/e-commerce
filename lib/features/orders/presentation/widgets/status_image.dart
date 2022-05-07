import 'package:flutter/material.dart';

class StatusImage extends StatelessWidget {
  const StatusImage({Key? key, required this.status}) : super(key: key);

  final String status;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 30,
      child: Image.asset(getImagePath(status)),
    );
  }

  String getImagePath(String status) {
    if (status.toLowerCase() == 'pending') {
      return 'assets/images/pending.png';
    } else if (status.toLowerCase() == 'shipped') {
      return 'assets/images/shipping.png';
    } else if (status.toLowerCase() == 'delivered') {
      return 'assets/images/delivered.png';
    } else {
      return 'assets/images/unknown.png';
    }
  }
}
