import 'package:flutter/material.dart';

class VideoLesson extends StatelessWidget {
  final String title;
  final String backgroundImage;
  final String buttonText;
  final Color buttonColor;
  const VideoLesson(
      {Key? key,
      required this.title,
      required this.backgroundImage,
      required this.buttonText,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 70, 20, 24),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/$backgroundImage.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          VideoButton(
            buttonText: buttonText,
            buttonColor: buttonColor,
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            title,
            style: const TextStyle(
                color: Color(0xffffffff),
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ]));
  }
}

class VideoButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  const VideoButton(
      {super.key, required this.buttonText, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            buttonColor,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ))),
      child: Text(buttonText),
    );
  }
}
