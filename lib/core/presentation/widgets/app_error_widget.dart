import 'package:flutter/material.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({Key? key, required this.error}) : super(key: key);
  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/error.gif',
            width: 250,
            height: 250,
          ),

          Text(
            error,
            style: Theme.of(context).textTheme.titleLarge,
          )
        ],
      ),
    );
  }
}
