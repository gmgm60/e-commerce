import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/l10n/l10n.dart';
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
            errorTranslate(error,context),
            style: Theme.of(context).textTheme.titleLarge,
          )
        ],
      ),
    );
  }
}

String errorTranslate(String error,BuildContext context){

switch(error){
  case unknownError : return context.tr.unknownError;
  case somethingWentWrong : return context.tr.somethingWentWrong;
  default : return error ;
}
}
