import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_shop/data/appdata.dart';

class HottestScroll extends StatefulWidget {
  const HottestScroll({super.key});

  @override
  State<HottestScroll> createState() => _HottestScrollState();
}

class _HottestScrollState extends State<HottestScroll> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: hottestData.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index){
        final items = hottestData[index];
      return InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'add_to_basket', arguments: items);
        },
        child: Container(
          margin: const EdgeInsets.only(left: 24),
          width: 152,
          height: 183,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Color(0xFFFEF0F0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: IconButton(
                  onPressed: (){
                    setState(() {
                      isFav = !isFav;
                    });
                  }, 
                  icon: isFav? const Icon(Icons.favorite, size: 25, color: Colors.red):  const Icon(Icons.favorite_outline, size: 25, color: Color(0xFFFFA451)),
                ),
              ),
              Image.asset(items['image']),
              const SizedBox(height: 8),  
              Text(items['name'], style: const TextStyle(fontSize: 16, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w500, color: Color(0xFF27214D)),),
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
                          Text(items['price'].toString(), style: const TextStyle(fontSize: 14, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400, color: Color(0xFFF08626)),),
                        ],
                      ),
                    ),
                    SvgPicture.asset('assets/add_circule.svg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
      },
    );
  }
}