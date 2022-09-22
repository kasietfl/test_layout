import 'package:flutter/material.dart';
import 'package:test_layout/colors.dart';
import 'package:test_layout/screens/sales/search-bar.dart';
import 'package:test_layout/screens/sales/date-modal.dart';
import 'package:test_layout/screens/sales/product-modal.dart';

class Sales extends StatefulWidget {
  const Sales({super.key});

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Text(
                      'Выбрать дату',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: gray2),
                    ),
                    InkWell(
                      onTap: (() => {
                            showModalBottomSheet<void>(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(16.0))),
                                isScrollControlled: true,
                                context: context,
                                builder: (BuildContext context) {
                                  return const DateModal();
                                }),
                          }),
                      child: Row(
                        children: const [
                          Text(
                            'Сегодня',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: green),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: green,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const VerticalDivider(
                  indent: 8,
                  endIndent: 8,
                ),
                Column(
                  children: const [
                    Text(
                      'Продажи',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: gray2),
                    ),
                    Text(
                      '73 единиц',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: green),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: SafeArea(
          minimum: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchBar(),
              const SizedBox(
                height: 22,
              ),
              Expanded(
                  child: ListView(children: const [
                ProductItem(
                  title: 'Аскорбиновая кислота',
                ),
                ProductItem(
                  title: 'Азитромицин',
                ),
                ProductItem(
                  title: 'Азитромицин Экспресс ',
                ),
                ProductItem(
                  title: 'Актитропил',
                ),
                ProductItem(
                  title: 'Аллохол',
                ),
                ProductItem(
                  title: 'Альтевир',
                ),
                ProductItem(
                  title: 'Амоксициллин',
                ),
                ProductItem(
                  title: 'Анальгин (таблетки)',
                ),
                ProductItem(
                  title: 'Анальгин-ЭкстраКап',
                ),
                ProductItem(
                  title: 'Артрозан',
                ),
              ]))
            ],
          ),
        ));
  }
}

class ProductItem extends StatelessWidget {
  final String title;
  const ProductItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet<void>(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16.0),
            ),
          ),
          isScrollControlled: true,
          backgroundColor: Colors.white,
          context: context,
          builder: (BuildContext context) {
            return const ProductModal();
          },
        );
      },
      child: Container(
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: lightGray2,
          ))),
          padding: const EdgeInsets.all(16),
          child: Text(
            title,
            style: const TextStyle(fontSize: 15),
          )),
    );
  }
}
