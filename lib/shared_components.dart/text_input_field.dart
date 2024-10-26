import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    super.key,
    required this.controller,
    required this.onSubmitted,
    this.hintText = '',
    this.hintColor = Colors.grey,
    this.focusedBorderColor = Colors.black,
    this.borderRadius = 20,
  });

  final TextEditingController controller;
  final String? hintText;
  final Color? hintColor;
  final Color? focusedBorderColor;
  final double? borderRadius;
  final ValueChanged<String> onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: hintColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius!),
              borderSide: BorderSide(color: focusedBorderColor!))),
    );
  }
}
