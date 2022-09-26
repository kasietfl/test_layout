import 'package:flutter/material.dart';
import 'package:test_layout/imports.dart';

class ProductModal extends StatefulWidget {
  final String text;
  const ProductModal({Key? key, required this.text}) : super(key: key);

  @override
  State<ProductModal> createState() => _ProductModalState();
}

class _ProductModalState extends State<ProductModal> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.55,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                icon: const Icon(
                  Icons.close_outlined,
                  size: 20,
                  color: gray2,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
              child: Column(
                children: <Widget>[
                  const Image(image: AssetImage('assets/images/product.png')),
                  Text(
                    widget.text,
                    style: kTextStyle22,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundButton(
                          icon: Icons.remove,
                          counter: () {
                            setState(() {
                              count--;
                            });
                          }),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 47, vertical: 8),
                        decoration: const BoxDecoration(
                            color: lightGray2,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Text(
                          '$count упаковка',
                          style: kTextStyle16,
                        ),
                      ),
                      RoundButton(
                          icon: Icons.add,
                          counter: () {
                            setState(() {
                              count++;
                            });
                          }),
                    ],
                  ),
                  const SizedBox(height: 30),
                  CustomButton(
                      buttonText: 'Отправить',
                      enabled: true,
                      function: () {
                        Navigator.pop(context);
                      }),
                ],
              ),
            ),
          ],
        ));
  }
}

class RoundButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback counter;
  const RoundButton({Key? key, required this.icon, required this.counter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding:
            MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(10)),
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor: MaterialStateProperty.all(black),
        shape: MaterialStateProperty.all(const CircleBorder()),
      ),
      onPressed: counter,
      child: Icon(icon, size: 20),
    );
  }
}
