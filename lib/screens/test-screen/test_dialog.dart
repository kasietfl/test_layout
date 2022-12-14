import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:test_layout/imports.dart';

class TestDialog extends StatelessWidget {
  const TestDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/svg/test1.svg'),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Вы уверены что хотите начать тест?',
            textAlign: TextAlign.center,
            style: kTextStyle22.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'У вас будет только одна попытка пройти тест, повторно вы сможете пройти только через 7 дней.',
            textAlign: TextAlign.center,
            style: kTextStyle15.copyWith(height: 1.6),
          ),
          const SizedBox(
            height: 34,
          ),
          CustomButton(
            buttonText: 'Начать тест',
            enabled: true,
            function: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/innertest');
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            buttonText: 'Отмена',
            enabled: false,
            function: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
