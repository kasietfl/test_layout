import 'package:flutter/material.dart';
import 'package:test_layout/widgets/custom_button.dart';
import 'package:test_layout/styles/colors.dart';

class DateModal extends StatefulWidget {
  const DateModal({Key? key}) : super(key: key);

  @override
  State<DateModal> createState() => _DateModalState();
}

class _DateModalState extends State<DateModal> {
  List<Days> days = [
    Days(text: 'Сегодня', enabled: true),
    Days(text: 'Вчера', enabled: false),
    Days(text: 'За неделя', enabled: false),
    Days(text: 'За месяц', enabled: false)
  ];
  bool enabled = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height * 0.9,
        child: Column(
          children: <Widget>[
            Container(
              height: 4,
              width: 48,
              decoration: BoxDecoration(
                  color: lightGray, borderRadius: BorderRadius.circular(15)),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Выбрать дату',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Expanded(
                child: ListView.builder(
                    itemExtent: 40,
                    itemCount: days.length,
                    itemBuilder: ((context, index) {
                      return InkWell(
                        onTap: () {
                          for (int i = 0; i < days.length; i++) {
                            days[i].enabled = false;
                          }
                          setState(() {
                            days[index].enabled = true;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              days[index].text,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: days[index].enabled ? black : gray3),
                            ),
                            days[index].enabled
                                ? const Icon(
                                    Icons.check,
                                    color: green,
                                  )
                                : Container(),
                          ],
                        ),
                      );
                    }))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Выбрать дату',
                  style: TextStyle(fontSize: 16, color: blue),
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  color: blue,
                ),
              ],
            ),
            CustomButton(buttonText: 'Отмена', enabled: false, function: () {}),
            const SizedBox(
              height: 20,
            )
          ],
        ));
  }
}

class Days {
  final String text;
  bool enabled;

  Days({required this.text, required this.enabled});
}
