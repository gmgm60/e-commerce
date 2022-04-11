import 'package:flutter/material.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    Key? key,
    required this.controller,
    required this.validate,
    required this.inputType,
    required this.label,
    this.icon,
    this.isPassword = false,
  }) : super(key: key);

  final TextEditingController controller;
  final TextInputType inputType;
  final String label;
  final IconData? icon;
  final String? Function(String?)? validate;
  final bool isPassword;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      controller: widget.controller,
      validator: widget.validate,
      keyboardType: widget.inputType,
      obscureText: widget.isPassword == true ? !obscureText : false,
      style: Theme.of(context).textTheme.bodyText1,
      decoration: InputDecoration(
        label: Text(widget.label),
        prefixIcon: Icon(
          widget.icon,
        ),
        suffixIcon: widget.isPassword == true
            ? IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon: Icon(
                  obscureText == true
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ))
            : null,
      ),
    );
  }
}
