import 'package:flutter/material.dart';
import 'package:test_layout/imports.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Ваш результат', style: kTextStyle18),
        centerTitle: true,
        foregroundColor: black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: green.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Правильных:',
                    style: kTextStyle14.copyWith(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '50',
                    style: kTextStyle24.copyWith(color: green),
                  )
                ],
              ),
            ),
            const Spacer(),
            CustomButton(
                buttonText: 'Далее',
                enabled: true,
                function: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => const AlertDialog(
                      insetPadding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      content: ResultDialog(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
