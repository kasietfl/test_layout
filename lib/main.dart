import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_layout/imports.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(fontFamily: 'NotoSans', backgroundColor: white),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Main(),
        '/base': (context) => const Base(),
        '/video': (context) => const VideoLessons(),
        '/tests': (context) => const Tests(),
        '/innernews': (context) => const InnerNews(),
        '/innertest': (context) => const InnerTest(),
        '/result': (context) => const Result()
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
        selectedItemColor: green,
        unselectedItemColor: gray4,
        unselectedLabelStyle: kTextStyle12,
        selectedLabelStyle: kTextStyle12,
        showUnselectedLabels: true,
        elevation: 5,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/bag.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/svg/bag.svg',
              color: green,
            ),
            label: 'Продажи',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/news.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/svg/news.svg',
              color: green,
            ),
            label: 'Новости',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/base.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/svg/base.svg',
              color: green,
            ),
            label: 'База',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/profile.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/svg/profile.svg',
              color: green,
            ),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}
