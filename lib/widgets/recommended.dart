import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecommendedCombo extends StatefulWidget {
  final String image;
  final String name;
  final String price;
  const RecommendedCombo({super.key, required this.image, required this.name, required this.price});

  @override
  State<RecommendedCombo> createState() => _RecommendedComboState();
}

class _RecommendedComboState extends State<RecommendedCombo> {
  bool isselect = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      height: 185,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Color(0xFFFFFFFF),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: IconButton(
              onPressed: (){
                setState(() {
                  isselect = !isselect;
                });
              }, 
              icon: isselect? const Icon(Icons.favorite, size: 25, color: Colors.red):  const Icon(Icons.favorite_outline, size: 25, color: Color(0xFFFFA451)),
            ),
          ),
          Image.asset(widget.image),
          const SizedBox(height: 8),  
          Text(widget.name, style: const TextStyle(fontSize: 16, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w500, color: Color(0xFF27214D)),),
          const SizedBox(height: 8),  
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icon_price.svg'),
                      Text(widget.price, style: const TextStyle(fontSize: 14, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400, color: Color(0xFFF08626)),),
                    ],
                  ),
                ),
                SvgPicture.asset('assets/add_circule.svg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}