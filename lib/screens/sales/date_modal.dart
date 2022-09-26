import 'package:flutter/material.dart';
import 'package:test_layout/imports.dart';

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
        height: MediaQuery.of(context).size.height * 0.94,
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
            Text(
              'Выбрать дату',
              style: kTextStyle18.copyWith(fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemExtent: 40,
                    itemCount: days.length,
                    shrinkWrap: true,
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
                              style: kTextStyle16.copyWith(
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
                    })),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Выбрать дату',
                          style: kTextStyle16.copyWith(color: blue),
                        ),
                        const Icon(
                          Icons.calendar_today_outlined,
                          color: blue,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomButton(buttonText: 'Отмена', enabled: false, function: () {}),
            const SizedBox(
              height: 9,
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
