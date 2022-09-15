import 'package:flutter/material.dart';

import 'package:test_layout/screens/sales/sales.dart';
import 'package:test_layout/screens/news/news.dart';
import 'package:test_layout/screens/base/base.dart';
import 'package:test_layout/screens/test-screen/tests.dart';
import 'package:test_layout/screens/video-lessons/video-lessons.dart';
import 'package:test_layout/screens/news/inner-news.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
          fontFamily: 'NotoSans', backgroundColor: const Color(0xffffffff)),
      initialRoute: '/',
      routes: {
        '/': (context) => const Main(),
        '/base': (context) => const Base(),
        '/video': (context) => const VideoLessons(),
        '/tests': (context) => const Tests(),
        '/innernews': ((context) => const InnerNews())
      }));
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int currentIndex = 0;
  final screens = [const Sales(), const News(), const Base(), const Tests()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        selectedItemColor: const Color.fromRGBO(0, 102, 72, 1),
        unselectedItemColor: const Color.fromRGBO(186, 188, 196, 1),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
        selectedLabelStyle: const TextStyle(fontSize: 12),
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/bag-2.png')),
            label: 'Продажи',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/note.png')),
            label: 'Новости',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/folder.png')),
            label: 'База',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/frame.png')),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}
