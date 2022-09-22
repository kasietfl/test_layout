import 'package:flutter/material.dart';
import 'package:test_layout/colors.dart';
import 'package:test_layout/custom-widgets/custom-button.dart';

class ProductModal extends StatelessWidget {
  const ProductModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
        child: SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Image(image: AssetImage('assets/images/product.png')),
                const Text(
                  'Аскорбиновая кислота-Фармстандарт',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const RoundButton(
                      icon: Icons.remove,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 47, vertical: 6),
                      decoration: const BoxDecoration(
                          color: lightGray2,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: const Text(
                        '1 упаковка',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const RoundButton(icon: Icons.add),
                  ],
                ),
                Expanded(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomButton(
                      buttonText: 'Отправить',
                      enabled: true,
                      function: () {
                        print('dddd');
                      }),
                ))
              ],
            )));
  }
}

class RoundButton extends StatelessWidget {
  final IconData icon;
  const RoundButton({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding:
            MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(10)),
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor: MaterialStateProperty.all(Colors.black),
        shape: MaterialStateProperty.all(const CircleBorder()),
      ),
      child: Icon(icon, size: 20),
      onPressed: () {},
    );
  }
}
