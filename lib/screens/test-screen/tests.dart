import 'package:flutter/material.dart';
import 'package:test_layout/screens/test-screen/test_item.dart';

class Tests extends StatefulWidget {
  const Tests({super.key});

  @override
  State<Tests> createState() => _TestsState();
}

class _TestsState extends State<Tests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Тесты',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              )),
          centerTitle: true,
          foregroundColor: Colors.black,
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.search,
                size: 24,
              ),
              tooltip: 'Open search bar',
              onPressed: () {
                // handle the press
              },
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: const <Widget>[
            Test(
              heading: 'На знание новинок для провизоров и фармацевтов',
              description:
                  'Проверьте свои профессиональные знания, ответив на 11 непростых вопросов',
            ),
            SizedBox(
              height: 12,
            ),
            Test(
              heading: 'Онлайн-тест: препараты при аллергии',
              description:
                  'Проверьте свои знания фармакологии антигистаминных лекарственных средств, ответив на 15 вопросов',
            ),
            SizedBox(
              height: 12,
            ),
            Test(
              heading: 'На знание новинок для провизоров и фармацевтов',
              description:
                  'Проверьте свои профессиональные знания, ответив на 11 непростых вопросов',
            ),
            SizedBox(
              height: 12,
            ),
            Test(
              heading: 'На знание новинок для провизоров и фармацевтов',
              description:
                  'Проверьте свои профессиональные знания, ответив на 11 непростых вопросов',
            ),
          ],
        ));
  }
}

class TestList {
  final String heading;
  final String description;

  TestList({required this.heading, required this.description});
}
