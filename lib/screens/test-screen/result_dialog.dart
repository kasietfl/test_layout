import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

import 'package:test_layout/widgets/custom_button.dart';

class ResultDialog extends StatelessWidget {
  const ResultDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 460,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 77,
          ),
          SvgPicture.asset('assets/svg/test2.svg'),
          const Spacer(),
          CustomButton(
            buttonText: 'Понятно',
            enabled: true,
            function: () {
              Navigator.of(context).popUntil(ModalRoute.withName('/tests'));
            },
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
