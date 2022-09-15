import 'package:flutter/material.dart';
import 'package:test_layout/screens/news/news-item.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: const Text('Новости',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            )),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        children: const <Widget>[
          NewsItem(
            date: '19 сентября',
            title:
                'Pfizer отозвал препарат Chantix из-за содержания в нем вызывающих рак веществ',
          ),
          SizedBox(
            height: 12,
          ),
          NewsItem(
            date: '30 августа',
            title:
                'НИИ гриппа завершил доклинические испытания вакцины от коронавируса',
          ),
          SizedBox(
            height: 12,
          ),
          NewsItem(
            date: '30 августа',
            title: 'В России фармрынок увеличился за полгода на 9%',
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
