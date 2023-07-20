import 'package:flutter/material.dart';

class OrderCompliteBottom extends StatefulWidget {
  const OrderCompliteBottom({super.key});

  @override
  State<OrderCompliteBottom> createState() => _OrderCompliteBottomState();
}

class _OrderCompliteBottomState extends State<OrderCompliteBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 96,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        color: Color(0xFFFFA451),
      ),
      child: Center(
        child: ElevatedButton(
          onPressed: (){}, 
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
            minimumSize: MaterialStatePropertyAll(Size(135, 56)),
          ),
          child: const Text('Complete Order', style: TextStyle(fontFamily: 'Josefin Sans', fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFFFFA451))),
        ),
      ),
    );
  }
}