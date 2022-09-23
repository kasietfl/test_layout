import 'package:flutter/material.dart';
import 'package:test_layout/styles/colors.dart';
import 'package:test_layout/styles/text_styles.dart';

class InnerNews extends StatefulWidget {
  const InnerNews({super.key});

  @override
  State<InnerNews> createState() => _InnerNewsState();
}

class _InnerNewsState extends State<InnerNews> {
  int countA = 0;
  int countB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: black,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView(children: [
                Text(
                  '19 сентября'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xff838795),
                  ),
                ),
                const Text('В России фармрынок увеличился за полгода на 9%',
                    style: kTextStyle24),
                const SizedBox(
                  height: 20,
                ),
                const Image(
                  image: AssetImage('assets/images/news.png'),
                  width: double.infinity,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'По итогам первого полугодия 2021 3 года емкость фармацевтического рынка в России составила 1094 млрд рублей, что на 9% больше, чем за аналогичный период 2020 года. Об этом говорится в исследовании аудитора фармацевтического рынка DSM Group, которое поступило «Известиям» в пятницу, 27 августа.',
                  style: TextStyle(fontSize: 15, height: 1.6),
                ),
              ]),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: const BoxDecoration(color: white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      EmojiButton(
                          image: 'emoji-1',
                          count: countA,
                          counter: () {
                            setState(() {
                              countA++;
                            });
                          }),
                      EmojiButton(
                          image: 'emoji-2',
                          count: countB,
                          counter: () {
                            setState(() {
                              countB++;
                            });
                          })
                    ],
                  ),
                ))
          ],
        ));
  }
}

class EmojiButton extends StatelessWidget {
  final String image;
  final int count;
  final VoidCallback counter;
  const EmojiButton(
      {Key? key,
      required this.image,
      required this.count,
      required this.counter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: counter,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
            color: Color(0xfff1f2f3),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/$image.png')),
            const SizedBox(
              width: 4,
            ),
            Text('$count'),
          ],
        ),
      ),
    );
  }
}
