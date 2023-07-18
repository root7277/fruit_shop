import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_shop/widgets/add_to_basket_widget.dart';

class AddToBasket extends StatefulWidget {
  const AddToBasket({super.key});

  @override
  State<AddToBasket> createState() => _AddToBasketState();
}

class _AddToBasketState extends State<AddToBasket> {
  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      backgroundColor: const Color(0xFFFFA451),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 64),
            child: InkWell(
              onTap: () => Navigator.pop(context, 'home_screen_one'),
              child: Container(
                padding: const EdgeInsets.all(6),
                width: 80,
                height: 32,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/arrow_back_icon.svg'),
                    const SizedBox(width: 2),
                    const Text('Go back', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF27214D),  fontFamily: 'Josefin Sans')),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Center(child: Image.asset(argument["image"])),
          const SizedBox(height: 95),
          const AddToBasketWidget(),
        ],
      ),
    );
  }
}