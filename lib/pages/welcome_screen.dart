import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 469,
            width: 375,
            color: const Color(0xFFFFA451),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 282, top: 110, right: 43),
                  child: Image.asset('assets/welcome_screen_1.png', width: 50, height: 37.52166),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 39, bottom: 54),
                  child: Image.asset('assets/welcome_screen_2.png', width: 301, height: 260),
                ),
              ],
            ),
          ),
          const SizedBox(height: 56),
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 70),
            child: Expanded(child: Text('Get The Freshest Fruit Salad Combo', style: TextStyle(fontSize: 20, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w500, color: Color(0xFF27214D)))),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 69),
            child: Expanded(child: Text('We deliver the best and freshest fruit salad in town. Order for a combo today!!!', style: TextStyle(fontSize: 16, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400, color: Color(0xFF5D577E)))),
          ),
          const SizedBox(height: 72),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: ElevatedButton(
              onPressed: (){Navigator.pushNamed(context, 'authentication');}, 
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(0xFFFFA451)),
                minimumSize: MaterialStatePropertyAll(Size(372, 56)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
              ), 
              child: const Text('Let’s Continue', style: TextStyle(fontSize: 16, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w500)),
            ),
          ),
        ],
      ),
    );
  }
}