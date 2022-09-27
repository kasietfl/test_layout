import 'package:flutter/material.dart';
import 'package:test_layout/styles/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Поиск препаратов',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(color: Color(0xffececef)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(color: Color(0xffececef)),
            ),
            focusColor: green,
            filled: true,
            fillColor: const Color(0xffececef),
            contentPadding: const EdgeInsets.all(2.0),
            prefixIcon: const Icon(Icons.search)),
      ),
    );
  }
}
