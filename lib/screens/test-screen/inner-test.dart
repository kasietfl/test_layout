import 'package:flutter/material.dart';
import 'package:test_layout/colors.dart';
import 'package:test_layout/custom-widgets/custom-button.dart';

class InnerTest extends StatefulWidget {
  const InnerTest({Key? key}) : super(key: key);

  @override
  State<InnerTest> createState() => _InnerTestState();
}

class _InnerTestState extends State<InnerTest> {
  List<Elemevdhy> listEl = [
    Elemevdhy(isChoosed: false, dfvfv: "kmkmk"),
    Elemevdhy(isChoosed: false, dfvfv: "dddddddddd"),
  ];
  final int _groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Вопрос: 4 из 13',
                style: TextStyle(fontSize: 12, color: gray3),
              ),
              Text(
                'Онлайн-тест: топические ГКС',
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
          bottom: const PreferredSize(
            preferredSize: Size(0, 0),
            child: LinearProgressIndicator(
              value: 1.0,
              color: green,
            ),
          ),
        ),
        body: SafeArea(
          minimum: const EdgeInsets.symmetric(vertical: 24, horizontal: 15),
          child: Column(
            children: <Widget>[
              const Text(
                'Какой орган эндокринной системы вырабатывает глюкокортикостероиды?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              RadioElement(
                text: 'sssss',
                value: 0,
              ),
              RadioElement(
                text: 'fff',
                value: 1,
              ),
              RadioElement(
                text: 'jjj',
                value: 2,
              ),
              RadioElement(
                text: 'yuy',
                value: 3,
              ),
              // Expanded(
              //     child: ListView.builder(
              //         itemCount: listEl.length,
              //         itemBuilder: ((context, index) {
              //           return InkWell(
              //               onTap: () {
              //                 // for (int i = 0; i < listEl.length; i++) {}
              //               },
              //               child: customElement(text: listEl[index].dfvfv));
              //         }))),
              Expanded(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomButton(
                        buttonText: 'Далее',
                        enabled: false,
                        function: () {
                          print('dddd');
                        },
                      )))
            ],
          ),
        )
        // Text(
        //     'Какой орган эндокринной системы вырабатывает глюкокортикостероиды?'),
        );
  }
}

class Elemevdhy {
  final bool isChoosed;
  final String dfvfv;

  Elemevdhy({required this.isChoosed, required this.dfvfv});
}

class RadioElement extends StatefulWidget {
  final String text;
  final int value;
  final int groupValue = 0;
  const RadioElement({
    super.key,
    required this.text,
    required this.value,
  });

  @override
  State<RadioElement> createState() => _RadioElementState();
}

class _RadioElementState extends State<RadioElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: green,
      child: Row(
        children: [
          Radio(
              value: widget.value,
              groupValue: widget.groupValue,
              onChanged: handleChange(widget.value)),
          Text(widget.text)
        ],
      ),
    );
  }

  handleChange(int value) {
    print(value);
    // setState((){
    //   _groupValue
    // });
  }
}
