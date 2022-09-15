import 'package:flutter/material.dart';
import 'package:test_layout/screens/sales/search-bar.dart';

class Sales extends StatefulWidget {
  const Sales({super.key});

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchBar(),
          Expanded(
              child: ListView(children: const [
            Card(
              child: ListTile(title: Text('Аскорбиновая кислота')),
            ),
            Card(
              child: ListTile(title: Text('Аскорбиновая кислота')),
            ),
            Card(
              child: ListTile(title: Text('Аскорбиновая кислота')),
            ),
            Card(
              child: ListTile(title: Text('Аскорбиновая кислота')),
            ),
            Card(
              child: ListTile(title: Text('Аскорбиновая кислота')),
            ),
            Card(
              child: ListTile(title: Text('Аскорбиновая кислота')),
            ),
            Card(
              child: ListTile(title: Text('Аскорбиновая кислота')),
            ),
            Card(
              child: ListTile(title: Text('Аскорбиновая кислота')),
            )
          ]))
        ],
      ),
    );
  }
}
