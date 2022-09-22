// ignore: file_names
import 'package:flutter/material.dart';

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
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                ListView(children: const [
                  Text(
                    '19 сентября',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff838795),
                    ),
                  ),
                  Text('В России фармрынок увеличился за полгода на 9%',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(
                    height: 20,
                  ),

                  // SvgPicture.asset("assets/svg/test1.svg"),
                  Image(
                    image: AssetImage('assets/images/news.png'),
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'По итогам первого полугодия 2021 3года емкость фармацевтического рынка в России составила 1094 млрд рублей, что на 9% больше, чем за аналогичный период 2020 года. Об этом говорится в исследовании аудитора фармацевтического рынка DSM Group, которое поступило «Известиям» в пятницу, 27 августа.',
                    style: TextStyle(fontSize: 15, height: 1.6),
                  ),
                ]),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => setState(() => countA++),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xfff1f2f3),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              width: MediaQuery.of(context).size.width * 0.40,
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Image(
                                      image: AssetImage(
                                          'assets/images/emoji-1.png')),
                                  Text('$countA'),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => setState(() => countB++),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: const BoxDecoration(
                                  color: Color(0xfff1f2f3),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Image(
                                      image: AssetImage(
                                          'assets/images/emoji-2.png')),
                                  Text('$countB'),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            )));
  }
}
