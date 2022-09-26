import 'package:flutter/material.dart';
import 'package:test_layout/imports.dart';

class InnerTest extends StatefulWidget {
  const InnerTest({Key? key}) : super(key: key);

  @override
  State<InnerTest> createState() => _InnerTestState();
}

class _InnerTestState extends State<InnerTest> {
  List<TestOptions> testOptions = [
    TestOptions(text: 'Щитовидная железа', isChose: false),
    TestOptions(text: 'Кора надпочечников', isChose: false),
    TestOptions(text: 'Кора надпочечников', isChose: false),
    TestOptions(text: 'Паращитовидные железы', isChose: false),
    TestOptions(text: 'Надпочечники', isChose: false),
  ];
  bool enabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Вопрос: 4 из 13',
                style: kTextStyle12.copyWith(color: gray3),
              ),
              const Text(
                'Онлайн-тест: топические ГКС',
                style: kTextStyle14,
              )
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: black,
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
                height: 2,
                decoration: const BoxDecoration(
                  color: lightGray2,
                ),
                child: const Divider(
                  color: green,
                  endIndent: 330,
                  thickness: 2,
                )),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  children: <Widget>[
                    const Image(
                        image: AssetImage('assets/images/inner-test.png')),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Какой орган эндокринной системы вырабатывает глюкокортикостероиды?',
                      style: kTextStyle20,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: testOptions.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: (() {
                                    for (int i = 0;
                                        i < testOptions.length;
                                        i++) {
                                      testOptions[i].isChose = false;
                                    }

                                    setState(() {
                                      testOptions[index].isChose = true;
                                      enabled = true;
                                    });
                                  }),
                                  child: Container(
                                    padding: const EdgeInsets.all(16.0),
                                    decoration: BoxDecoration(
                                      color: const Color(0xfff9fafa),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(children: [
                                      Container(
                                        padding: const EdgeInsets.all(4.0),
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: white,
                                            border: Border.all(
                                              width: 2.0,
                                              color: testOptions[index].isChose
                                                  ? green
                                                  : lightGray,
                                            )),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: testOptions[index].isChose
                                                ? green
                                                : white,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Text(
                                        testOptions[index].text,
                                        style: kTextStyle16,
                                      ),
                                    ]),
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                )
                              ],
                            );
                          }),
                    ),
                    CustomButton(
                      buttonText: 'Далее',
                      enabled: enabled,
                      function: () {
                        enabled ? Navigator.pushNamed(context, '/result') : {};
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class TestOptions {
  final String text;
  bool isChose;

  TestOptions({required this.text, required this.isChose});
}
