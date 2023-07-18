import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 24, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 24, top: 20, bottom: 15),
                  width: 288,
                  height: 56,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Color(0xFFF3F4F9),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search, size: 20, color: Color.fromARGB(255, 134, 134, 158)),
                      hintText: 'Search for fruit salad combos',
                      hintStyle: TextStyle(fontSize: 14, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400, color: Color(0xFF86869E)),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Image.asset('assets/icon_tune.png')
              ],
            ),
          );
  }
}