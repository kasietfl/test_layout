import 'package:flutter/material.dart';
import 'package:test_layout/widgets/small_button.dart';
import 'package:test_layout/screens/video-lessons/video_lesson.dart';

class VideoLessons extends StatefulWidget {
  const VideoLessons({Key? key}) : super(key: key);

  @override
  State<VideoLessons> createState() => _VideoLessonsState();
}

class _VideoLessonsState extends State<VideoLessons> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              foregroundColor: Colors.black,
              title: const Text(
                'Видео уроки',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              bottom: const TabBar(
                padding: EdgeInsets.symmetric(horizontal: 11),
                indicatorPadding: EdgeInsets.zero,
                labelPadding: EdgeInsets.symmetric(horizontal: 4),
                indicatorColor: Colors.transparent,
                labelColor: Color(0xff000000),
                isScrollable: true,
                tabs: <Widget>[
                  SmallButton(
                    buttonText: 'Все',
                    enabled: true,
                  ),
                  SmallButton(buttonText: 'Вебинары', enabled: false),
                  SmallButton(buttonText: 'обучение', enabled: false),
                  SmallButton(buttonText: 'позновательное', enabled: false),
                ],
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    size: 24,
                  ),
                  tooltip: 'Open search bar',
                  onPressed: () {
                    // handle the press
                  },
                ),
              ],
            ),
            body: ListView(
              padding: const EdgeInsets.all(15),
              children: const [
                VideoLesson(
                    title:
                        'Запись вебинара «Секреты красоты, доступные каждой»',
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
            )));
  }
}
