import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

import 'package:test_layout/widgets/custom_button.dart';

class ResultDialog extends StatelessWidget {
  const ResultDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/svg/test2.svg'),
          const SizedBox(
            height: 24,
          ),
          CustomButton(
            buttonText: 'Понятно',
            enabled: true,
            function: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
