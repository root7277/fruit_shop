import 'package:flutter/material.dart';
import 'package:fruit_shop/widgets/order_complide_bottom.dart';
import 'package:fruit_shop/widgets/text_sheet.dart';

import 'input_sheet.dart';

class PayWithCart extends StatefulWidget {
  const PayWithCart({super.key});

  @override
  State<PayWithCart> createState() => _PayWithCartState();
}

class _PayWithCartState extends State<PayWithCart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
      Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          width: 375,
          height: 505,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(24), topLeft: Radius.circular(24)),
            color: Color(0xFFFFFFFF),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextSheet(text: 'Card Holders Name'),
              SizedBox(height: 10),
              InputSheet(hintText: 'Adolphus Chris', height: 56, width: 327),
              TextSheet(text: 'Card Number'),
              SizedBox(height: 10),
              InputSheet(hintText: '1234 5678 9012 1314', height: 56, width: 327),
              Padding(
                padding: EdgeInsets.only(right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextSheet(text: 'Date'),
                        SizedBox(height: 16),
                        InputSheet(hintText: '10/30', width: 134, height: 56)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextSheet(text: 'CCV'),
                        SizedBox(height: 16),
                        InputSheet(hintText: '123', width: 134, height: 56)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              OrderCompliteBottom(),
            ],
          ),
        ),
      ),
      Positioned(
        left: 0,
        right: 0,
        top: -70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white,  
              ),
              child: const Center(child: Text('X', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Colors.black))),
            ),
          ],
        ),
      ),],
    );
  }
}