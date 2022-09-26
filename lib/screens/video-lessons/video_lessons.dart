import 'package:flutter/material.dart';
import 'package:test_layout/imports.dart';

class VideoLessons extends StatefulWidget {
  const VideoLessons({Key? key}) : super(key: key);

  @override
  State<VideoLessons> createState() => _VideoLessonsState();
}

class _VideoLessonsState extends State<VideoLessons> {
  List<String> buttonList = ['Все', 'Вебинары', 'обучение', 'позновательное'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            foregroundColor: black,
            title: const Text(
              'Видео уроки',
              style: kTextStyle18,
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            bottom: TabBar(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              padding: const EdgeInsets.symmetric(horizontal: 11),
              indicatorPadding: const EdgeInsets.all(8),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: green,
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: const EdgeInsets.symmetric(horizontal: 14),
              labelStyle: kTextStyle14.copyWith(
                color: gray,
                fontWeight: FontWeight.w700,
              ),
              indicatorColor: gray,
              labelColor: white,
              unselectedLabelColor: gray,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  text: 'Все'.toUpperCase(),
                ),
                Tab(
                  text: 'Вебинары'.toUpperCase(),
                ),
                Tab(
                  text: 'обучение'.toUpperCase(),
                ),
                Tab(
                  text: 'позновательное'.toUpperCase(),
                )
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 24,
                ),
                tooltip: 'Open search bar',
                onPressed: () {},
              ),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: ListView(
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
                ),
              ),
              Center(
                child: ListView(
                  padding: const EdgeInsets.all(15),
                  children: const [
                    VideoLesson(
                        title:
                            'Запись вебинара «Секреты красоты, доступные каждой»',
                        backgroundImage: 'video-1',
                        buttonText: 'Вебинар',
                        buttonColor: Color.fromRGBO(160, 217, 17, 0.3)),
                  ],
                ),
              ),
              Center(
                child: ListView(
                  padding: const EdgeInsets.all(15),
                  children: const [
                    VideoLesson(
                      title: 'Стресс и физнагрузки: какая взаимосвязь»',
                      backgroundImage: 'video-2',
                      buttonText: 'Обучение',
                      buttonColor: Color.fromRGBO(146, 84, 222, 0.3),
                    ),
                  ],
                ),
              ),
              Center(
                child: ListView(
                  padding: const EdgeInsets.all(15),
                  children: const [
                    VideoLesson(
                      title: 'Ответы на вопросы по маркировке лекарств',
                      backgroundImage: 'video-3',
                      buttonText: 'Познавательное',
                      buttonColor: Color.fromRGBO(247, 89, 171, 0.3),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
