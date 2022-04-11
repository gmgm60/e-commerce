import 'package:ecommerce/core/presentation/colors/colors.dart';
import 'package:ecommerce/core/presentation/widgets/app_progress_indicator.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton(
      {Key? key,
      required this.onPressed,
      required this.text,
        this.color,
      this.isLoading = false})
      : super(key: key);

  final String text;
  final bool isLoading;
  final Color? color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: isLoading == false
            ? Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: Colors.white),
              )
            : SizedBox(
                width: 20,
                height: 20,
                child: AppProgressIndicator(
                  color: Colors.white.withOpacity(.8),
                )),
      ),
    );
  }
}
