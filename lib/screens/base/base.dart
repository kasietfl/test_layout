import 'package:flutter/material.dart';
import 'package:test_layout/screens/base/base-item.dart';

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
        title: const Text('База',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
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
    );
  }
}
