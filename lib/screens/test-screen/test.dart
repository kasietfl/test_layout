import 'package:flutter/material.dart';

import 'package:test_layout/screens/test-screen/test-dialog.dart';

class Test extends StatelessWidget {
  final String heading;
  final String description;
  final int amount;
  const Test(
      {required this.heading, required this.description, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 230,
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
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff18191C)),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            description,
            style: const TextStyle(color: Color(0xff5E626E), fontSize: 14),
          ),
          const Padding(padding: EdgeInsets.only(top: 16)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Button(),
              Column(
                children: [
                  const Text(
                    'Тест прошли',
                    style: TextStyle(fontSize: 12, color: Color(0xff5E626E)),
                  ),
                  Text(
                    '$amount чел.',
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff18191C)),
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
            color: Color(0xff006648), width: 2.0, style: BorderStyle.solid)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        )),
      ),
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => const AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          content: TestDialog(),
        ),
      ),
      child: const Text(
        'Начать тест',
        style: TextStyle(
          color: Color(0xff006648),
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
