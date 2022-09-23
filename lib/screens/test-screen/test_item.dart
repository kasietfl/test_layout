import 'package:flutter/material.dart';

import 'package:test_layout/screens/test-screen/test_dialog.dart';
import 'package:test_layout/styles/colors.dart';
import 'package:test_layout/styles/text_styles.dart';

class Test extends StatelessWidget {
  final String heading;
  final String description;
  const Test({
    super.key,
    required this.heading,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 38, 20, 30),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Color(0xffe4e6e6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            heading,
            style: kTextStyle18,
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            description,
            style: const TextStyle(color: gray2, fontSize: 14),
          ),
          const Padding(padding: EdgeInsets.only(top: 16)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Button(),
              Column(
                children: const [
                  Text(
                    'Тест прошли',
                    style: TextStyle(fontSize: 12, color: gray2),
                  ),
                  Text(
                    '54 чел.',
                    style: kTextStyle18,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(const Size(190, 48)),
        side: MaterialStateProperty.all(const BorderSide(
            color: green, width: 2.0, style: BorderStyle.solid)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        )),
      ),
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => const AlertDialog(
          insetPadding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          content: TestDialog(),
        ),
      ),
      child: Text(
        'Начать тест',
        style: kTextStyle16.copyWith(
          color: green,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
