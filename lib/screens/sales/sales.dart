import 'package:flutter/material.dart';
import 'package:test_layout/imports.dart';

class Sales extends StatefulWidget {
  const Sales({super.key});

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  List<String> products = [
    'Аскорбиновая кислота',
    'Азитромицин',
    'Азитромицин Экспресс',
    'Актитропил',
    'Аллохол',
    'Альтевир',
    'Амоксициллин',
    'Анальгин (таблетки)',
    'Анальгин-ЭкстраКап',
    'Артрозан'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Выбрать дату',
                      style: kTextStyle14.copyWith(
                          fontWeight: FontWeight.w300, color: gray2),
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
                        children: [
                          Text(
                            'Сегодня',
                            style: kTextStyle16.copyWith(
                                fontWeight: FontWeight.w600, color: green),
                          ),
                          const Icon(
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
                  children: [
                    Text(
                      'Продажи',
                      style: kTextStyle14.copyWith(
                          fontWeight: FontWeight.w300, color: gray2),
                    ),
                    Text(
                      '73 единиц',
                      style: kTextStyle16.copyWith(
                          fontWeight: FontWeight.w600, color: green),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchBar(),
            const Divider(
              thickness: 16,
              color: lightGray2,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(16.0),
                              ),
                            ),
                            isScrollControlled: true,
                            backgroundColor: white,
                            context: context,
                            builder: (BuildContext context) {
                              return ProductModal(text: products[index]);
                            },
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: lightGray2,
                          ))),
                          child: Text(products[index], style: kTextStyle15),
                        ));
                  }),
            ),
          ],
        ));
  }
}
