import 'package:flutter/material.dart';
import 'package:test_layout/imports.dart';

class Base extends StatefulWidget {
  const Base({Key? key}) : super(key: key);

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('База', style: kTextStyle24),
        elevation: 0,
        foregroundColor: black,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const Divider(
            color: lightGray2,
            height: 1,
            thickness: 1,
          ),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 36),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: const <Widget>[
                BaseItem(
                  title: 'Видео уроки',
                  section: 'video',
                  image: 'video',
                ),
                BaseItem(
                  title: 'Схема применения',
                  section: 'video',
                  image: 'task',
                ),
                BaseItem(
                  title: 'Тесты',
                  section: 'tests',
                  image: 'video',
                ),
                BaseItem(
                  title: 'Инструкции',
                  section: 'video',
                  image: 'video',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
