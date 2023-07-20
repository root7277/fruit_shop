import 'package:flutter/material.dart';
import 'package:fruit_shop/widgets/pay_widget.dart';
import 'package:fruit_shop/widgets/pay_with_cart.dart';
import 'package:fruit_shop/widgets/text_sheet.dart';

import 'input_sheet.dart';

class CompliteDetails extends StatefulWidget {
  const CompliteDetails({super.key});

  @override
  State<CompliteDetails> createState() => _CompliteDetailsState();
}

class _CompliteDetailsState extends State<CompliteDetails> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
      Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          width: 375,
          height: 406,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(24), topLeft: Radius.circular(24)),
            color: Color(0xFFFFFFFF),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextSheet(text: 'Delivery address'),
              const SizedBox(height: 16),
              const InputSheet(hintText: '10th avenue, Lekki, Lagos State', height: 56, width: 327),
              const SizedBox(height: 24),
              const TextSheet(text: 'Number we can call'),
              const SizedBox(height: 16),
              const InputSheet(hintText: '09090605708', height: 56, width: 327),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const PayWidget(payText: 'Pay on delivery'),
                    PayWidget(
                      payText: 'Pay with card',
                      onPressed: () {
                        showModalBottomSheet(
                          context: context, 
                          isScrollControlled: true,
                          builder: (BuildContext context){
                            return const PayWithCart();
                          }
                        );
                      },
                    ),
                  ],
                ),
              ),
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
      ),
    ],
  );
 }
}