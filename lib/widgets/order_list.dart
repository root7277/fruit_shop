import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_shop/data/appdata.dart';

class OrderListWidget extends StatefulWidget {
  const OrderListWidget({super.key});

  @override
  State<OrderListWidget> createState() => _OrderListWidgetState();
}

class _OrderListWidgetState extends State<OrderListWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 375,
        color: Colors.white,
        child: ListView.builder(
          itemCount: orderImage.length,
          itemBuilder: (context, index){ 
            return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 230,
                        child: Row(
                          children: [
                            Container(
                              width: 65,
                              height: 64,
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFFFFAEB),
                              ),
                              child: Image.asset(orderImage[index]),
                            ),
                            const SizedBox(width: 14),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(orderName[index], style: const TextStyle(fontFamily: 'Josefin Sans', fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
                                const SizedBox(height: 8),
                                const Text('2 packs', style: TextStyle(fontFamily: 'Josefin Sans', fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 70,
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/add_basket/icon_price_1.svg'),
                            Text(orderPrice[index].toString(), style: const TextStyle(fontFamily: 'Josefin Sans', fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF27214D)),)
                          ],
                        ),
                      ),
                    ],
                ),
              ),
              const SizedBox(height: 16),
              Container(height: 2, color: const Color(0xFFF4F4F4)),
              const SizedBox(height: 25),
            ],
          );
          }
        ),
      ),
    );
  }
}