import 'package:flutter/material.dart';

class BaseItem extends StatelessWidget {
  final String title;
  final String section;
  final String image;
  const BaseItem(
      {super.key,
      required this.title,
      required this.section,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/$section');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Image(image: AssetImage('assets/$image.png')),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 6),
            const Text('Краткое описание данного раздела',
                style: TextStyle(color: Color(0xff5E626E), fontSize: 14))
          ],
        ),
      ),
    );
  }
}
