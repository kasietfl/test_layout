import 'package:flutter/material.dart';
import 'package:test_layout/screens/video-lessons/video-lesson.dart';

class VideoLessons extends StatefulWidget {
  const VideoLessons({Key? key}) : super(key: key);

  @override
  State<VideoLessons> createState() => _VideoLessonsState();
}

class _VideoLessonsState extends State<VideoLessons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: const Text(
            'Видео уроки',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: const [
            VideoLesson(
                title: 'Запись вебинара «Секреты красоты, доступные каждой»',
                backgroundImage: 'video-1',
                buttonText: 'Вебинар',
                buttonColor: Color.fromRGBO(160, 217, 17, 0.3)),
            SizedBox(
              height: 16,
            ),
            VideoLesson(
              title: 'Стресс и физнагрузки: какая взаимосвязь»',
              backgroundImage: 'video-2',
              buttonText: 'Обучение',
              buttonColor: Color.fromRGBO(146, 84, 222, 0.3),
            ),
            SizedBox(
              height: 16,
            ),
            VideoLesson(
              title: 'Ответы на вопросы по маркировке лекарств',
              backgroundImage: 'video-3',
              buttonText: 'Познавательное',
              buttonColor: Color.fromRGBO(247, 89, 171, 0.3),
            )
          ],
        ));
  }
}
