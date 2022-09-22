import 'package:flutter/material.dart';
import 'package:test_layout/custom-widgets/custom-button.dart';
import 'package:test_layout/colors.dart';

class DateModal extends StatelessWidget {
  const DateModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.9,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Выбрать дату',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            Column(
              children: const [
                DateButton(
                  text: 'Сегодня',
                  enabled: true,
                ),
                DateButton(
                  text: 'Вчера',
                  enabled: false,
                ),
                DateButton(
                  text: 'За неделя',
                  enabled: false,
                ),
                DateButton(
                  text: 'За месяц',
                  enabled: false,
                ),
                DateButton(
                  text: 'Выбрать дату',
                  enabled: false,
                )
              ],
            ),
            Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomButton(
                        buttonText: 'Отмена',
                        enabled: false,
                        function: () {
                          print('dddd');
                        })))
          ],
        ));
  }
}

class DateButton extends StatelessWidget {
  final String text;
  final bool enabled;
  const DateButton({
    Key? key,
    required this.text,
    required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color: enabled ? black : gray3),
        ));
  }
}
