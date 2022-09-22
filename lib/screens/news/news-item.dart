import 'package:flutter/material.dart';

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
              style: const TextStyle(fontSize: 12, color: Color(0xff5E626E)),
            ),
            const Padding(padding: EdgeInsets.only(top: 12)),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const Padding(padding: EdgeInsets.only(top: 16)),
            Row(children: [
              Row(children: const [
                Image(image: AssetImage('assets/images/emoji-1.png')),
                Text('10')
              ]),
              const Padding(padding: EdgeInsets.only(left: 24)),
              Row(children: const [
                Image(image: AssetImage('assets/images/emoji-2.png')),
                Text('10')
              ])
            ])
          ],
        ),
      ),
    );
  }
}
