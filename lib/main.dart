import 'package:flutter/material.dart';
import 'package:fruit_shop/pages/add_to_basket.dart';
import 'package:fruit_shop/pages/authentication.dart';
import 'package:fruit_shop/pages/home_screen_one.dart';
import 'package:fruit_shop/pages/order_list.dart';
import 'package:fruit_shop/pages/splash_screen.dart';
import 'package:fruit_shop/pages/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash_screen',
      routes: {
        'splash_screen':(context) => const SplashScreen(),
        'welcome_screen':(context) => const WelcomeScreen(),
        'authentication':(context) => const Authentication(),
        'home_screen_one':(context) => const HomeScreenOne(),
        'add_to_basket':(context) => const AddToBasket(),
        'order_list':(context) => const OrderList(),
      },
    );
  }
}