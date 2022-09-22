import 'package:flutter/material.dart';
import 'package:test_layout/widgets/custom_button.dart';
import 'package:test_layout/styles/colors.dart';
import 'package:test_layout/screens/test-screen/result_dialog.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Ваш результат',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            )),
        centerTitle: true,
        foregroundColor: Colors.black,
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
                  color: const Color(0xff006648).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Правильных:',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '50',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: green),
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
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      content: ResultDialog(),
                    ),
                  );
                }),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
