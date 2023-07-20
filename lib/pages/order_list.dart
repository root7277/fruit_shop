import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_shop/widgets/complite_details.dart';
import 'package:fruit_shop/widgets/order_list.dart';

class OrderList extends StatefulWidget {
  const OrderList({super.key});

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFA451),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
             const Padding(
               padding: EdgeInsets.only(top: 72, right: 100),
               child: Text('My Basket', style: TextStyle(fontFamily: 'Josefin Sans', fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white)),
             ),
            ],
          ),
          const SizedBox(height: 40),
          const OrderListWidget(),
          Container(
            height: 80,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 56,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Total', style: TextStyle(fontFamily: 'Josefin Sans', fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),),
                        Row(
                          children: [
                            SvgPicture.asset('assets/add_basket/icon_price_1.svg'),
                            const Text('60.000', style: TextStyle(fontFamily: 'Josefin Sans', fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF27214D)),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      showModalBottomSheet(
                        context: context, 
                        isScrollControlled: true,
                        builder: (BuildContext context){
                          return const CompliteDetails();
                        }
                      );
                    }, 
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color(0xFFFFA451)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                      minimumSize: MaterialStatePropertyAll(Size(199, 56)),
                    ),
                    child: const Text('Checkout', style: TextStyle(fontFamily: 'Josefin Sans', fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}