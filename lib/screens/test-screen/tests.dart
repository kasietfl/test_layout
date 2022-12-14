import 'package:flutter/material.dart';
import 'package:test_layout/imports.dart';

class Tests extends StatefulWidget {
  const Tests({super.key});

  @override
  State<Tests> createState() => _TestsState();
}

class _TestsState extends State<Tests> {
  List<TestList> testList = [
    TestList(
      heading: 'На знание новинок для провизоров и фармацевтов',
      description:
          'Проверьте свои профессиональные знания, ответив на 11 непростых вопросов',
    ),
    TestList(
      heading: 'Онлайн-тест: препараты при аллергии',
      description:
          'Проверьте свои знания фармакологии антигистаминных лекарственных средств, ответив на 15 вопросов',
    ),
    TestList(
      heading: 'На знание новинок для провизоров и фармацевтов',
      description:
          'Проверьте свои профессиональные знания, ответив на 11 непростых вопросов',
    ),
    TestList(
      heading: 'На знание новинок для провизоров и фармацевтов',
      description:
          'Проверьте свои профессиональные знания, ответив на 11 непростых вопросов',
    ),
  ];

  get black => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Тесты', style: kTextStyle18),
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
        body: ListView.builder(
            padding: const EdgeInsets.all(15),
            itemCount: testList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Test(
                    heading: testList[index].heading,
                    description: testList[index].description,
                  ),
                  const SizedBox(
                    height: 12,
                  )
                ],
              );
            }));
  }
}

class TestList {
  final String heading;
  final String description;

  TestList({required this.heading, required this.description});
}
