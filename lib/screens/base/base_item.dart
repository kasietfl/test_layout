import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_layout/imports.dart';

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
    return InkWell(
      onTap: () => Navigator.pushNamed(context, '/$section'),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/svg/$image.svg'),
            const SizedBox(height: 10),
            Text(
              title,
              style: kTextStyle18,
            ),
            const SizedBox(height: 6),
            Text('Краткое описание данного раздела',
                style: kTextStyle14.copyWith(
                  color: gray2,
                ))
          ],
        ),
      ),
    );
  }
}
