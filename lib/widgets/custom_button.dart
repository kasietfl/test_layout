import 'package:flutter/material.dart';
import 'package:test_layout/imports.dart';

class CustomButton extends StatelessWidget {
  final bool enabled;
  final String buttonText;
  final VoidCallback function;
  const CustomButton(
      {super.key,
      required this.buttonText,
      required this.enabled,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),
          minimumSize:
              MaterialStateProperty.all(const Size(double.infinity, 56)),
          backgroundColor: MaterialStateProperty.all(
            enabled ? green : lightGray2,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ))),
      child: Text(
        buttonText,
        style: kTextStyle16.copyWith(
            color: enabled ? white : gray, fontWeight: FontWeight.w600),
      ),
    );
  }
}
