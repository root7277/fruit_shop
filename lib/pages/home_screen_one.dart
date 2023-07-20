import 'package:flutter/material.dart';
import 'package:fruit_shop/widgets/hottest_scroll.dart';
import 'package:fruit_shop/widgets/recommended.dart';
import 'package:fruit_shop/widgets/search_widget.dart';
import 'package:fruit_shop/widgets/toolbar.dart';

class HomeScreenOne extends StatefulWidget {
  const HomeScreenOne({super.key});

  @override
  State<HomeScreenOne> createState() => _HomeScreenOneState();
}

class _HomeScreenOneState extends State<HomeScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFFFFFF),
        leading: Image.asset('assets/icon_menu.png'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'order_list');
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_checkout_outlined, size: 40, color: Color(0xFFFFA451)),
                  Text('My basket', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, fontFamily: 'Josefin Sans', color: Color(0xFF27214D)),)
                ],
              ),
            ),
          )
        ],
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24, top: 11),
            child: Text('Hello Tony, What fruit salad\n combo do you want today?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, fontFamily: 'Josefin Sans', color: Color(0xFF27214D))),
          ),
          SizedBox(height: 24),
          SearchWidget(),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text('Recommended Combo', style: TextStyle(fontSize: 24, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w500, color: Color(0xFF27214D))),
          ),
          SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RecommendedCombo(image: 'assets/recommended_1.png', name: 'Quinoa fruit salad', price: '2,000'),
                RecommendedCombo(image: 'assets/recommended_2.png', name: 'Berry mango combo', price: '8,000'),
              ],
            ),
          ),
          SizedBox(height: 48),
          ToolBar(),
          SizedBox(height: 24),
          Expanded(child: HottestScroll()),
        ],
      ),
    );
  }
}