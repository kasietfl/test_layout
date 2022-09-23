import 'package:flutter/material.dart';
import 'package:test_layout/styles/colors.dart';
import 'package:test_layout/styles/text_styles.dart';

class NewsItem extends StatelessWidget {
  final String date;
  final String title;
  const NewsItem({super.key, required this.date, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/innernews');
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date,
              style: const TextStyle(fontSize: 12, color: gray2),
            ),
            const Padding(padding: EdgeInsets.only(top: 12)),
            Text(
              title,
              style: kTextStyle18.copyWith(fontWeight: FontWeight.w600),
            ),
            const Padding(padding: EdgeInsets.only(top: 16)),
            Row(children: [
              Row(children: const [
                Image(image: AssetImage('assets/images/emoji-1.png')),
                SizedBox(
                  width: 4,
                ),
                Text('10')
              ]),
              const Padding(padding: EdgeInsets.only(left: 24)),
              Row(children: const [
                Image(image: AssetImage('assets/images/emoji-2.png')),
                SizedBox(
                  width: 4,
                ),
                Text('10')
              ])
            ])
          ],
        ),
      ),
    );
  }
}
