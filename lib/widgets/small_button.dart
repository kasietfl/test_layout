import 'package:flutter/material.dart';
import 'package:test_layout/styles/colors.dart';

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
        style: TextStyle(
            color: enabled ? white : gray,
            fontSize: 14,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
