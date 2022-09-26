import 'package:flutter/material.dart';
import 'package:test_layout/imports.dart';

class SmallButton extends StatelessWidget {
  final bool enabled;
  final String buttonText;
  const SmallButton(
      {super.key, required this.buttonText, required this.enabled});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),
          backgroundColor: MaterialStateProperty.all(
            enabled ? green : lightGray2,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ))),
      child: Text(
        buttonText.toUpperCase(),
        style: kTextStyle14.copyWith(
            color: enabled ? white : gray, fontWeight: FontWeight.w700),
      ),
    );
  }
}
