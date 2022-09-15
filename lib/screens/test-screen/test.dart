import 'package:flutter/material.dart';
import 'package:test_layout/custom-widgets/button.dart';

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
              Button(),
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
