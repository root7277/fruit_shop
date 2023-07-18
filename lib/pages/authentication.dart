import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 375,
              height: 469,
              color: const Color(0xFFFFA451),
              child: Padding(
                padding: const EdgeInsets.only(top: 134, bottom: 53, left: 31, right: 43  ),
                child: Image.asset('assets/authentication.png', height: 281.20, width: 301),
              ),
            ),
            const SizedBox(height: 56),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Expanded(child: Text('What is your firstname?', style: TextStyle(fontSize: 20, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w500, color: Color(0xFF27214D)),)),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Container(
                padding: const EdgeInsets.only(left: 24, top: 13, bottom: 8),
                width: 327,
                height: 56,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFF3F1F1),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Tony',
                    hintStyle: TextStyle(fontSize: 20, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400, color: Color(0xFFC2BDBD)),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 42),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: ElevatedButton(
                onPressed: (){Navigator.pushNamed(context, 'home_screen_one');}, 
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xFFFFA451)),
                  minimumSize: MaterialStatePropertyAll(Size(327, 56)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))))
                ),
                child: const Text('Start Ordering', style: TextStyle(fontSize: 16, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w500),),
              ),
            ),
          ],
        ),
        ],
      ),
    );
  }
}