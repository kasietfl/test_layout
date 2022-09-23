import 'package:flutter/material.dart';
import 'package:test_layout/styles/colors.dart';
import 'package:test_layout/styles/text_styles.dart';
import 'package:test_layout/screens/news/news_item.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  List<NewsElements> newsList = [
    NewsElements(
        title:
            'Pfizer отозвал препарат Chantix из-за содержания в нем вызывающих рак веществ',
        date: '19 сентября'),
    NewsElements(
        title:
            'НИИ гриппа завершил доклинические испытания вакцины от коронавируса',
        date: '30 августа'),
    NewsElements(
        title: 'В России фармрынок увеличился за полгода на 9%',
        date: '30 августа')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: const Text('Новости', style: kTextStyle24),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            const Divider(
              color: lightGray2,
              thickness: 1,
            ),
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: newsList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        NewsItem(
                            date: newsList[index].date,
                            title: newsList[index].title),
                        const SizedBox(
                          height: 12,
                        )
                      ],
                    );
                  }),
            ),
          ],
        ));
  }
}

class NewsElements {
  final String title;
  final String date;

  NewsElements({required this.title, required this.date});
}
