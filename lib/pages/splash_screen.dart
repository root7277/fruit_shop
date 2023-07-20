import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState(){
    Future.delayed(const Duration(seconds: 2), (){
      Navigator.pushNamed(context, 'welcome_screen');
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/splash_screen.svg'),
            ElevatedButton(
              onPressed: (){}, 
              style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(184, 40)),
                backgroundColor: MaterialStatePropertyAll(Color(0xFFFFA451)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomRight: Radius.circular(16))))
              ),
              child: const Text('Fruit Hub', style: TextStyle(fontSize: 24, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400),)
            ),
          ],
        ),
      ),
    );
  }
}