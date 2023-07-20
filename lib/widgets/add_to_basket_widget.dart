import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_shop/data/appdata.dart';

class AddToBasketWidget extends StatefulWidget {
  const AddToBasketWidget({super.key});

  @override
  State<AddToBasketWidget> createState() => _AddToBasketWidgetState();
}

class _AddToBasketWidgetState extends State<AddToBasketWidget> {
  bool heart = false;
  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments as Map;
    return Expanded(
            child: Container(
              width: 375,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 40),
                    child: Text(argument['name'], style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w500, fontFamily: 'Josefin Sans', color: Color(0xFF27214D)),),
                  ),
                  const SizedBox(height: 33),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 150,
                          child: Row(
                            children: [
                               InkWell(
                                onTap: () {
                                  setState(() {
                                    if(sum['countFood'] > 1){
                                      sum['countFood']--;
                                    }
                                  });
                                },
                                child: SvgPicture.asset('assets/add_basket/icon_minus.svg')
                              ),
                               const SizedBox(width: 24),
                               Text(sum['countFood'].toString(), style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400, fontFamily: 'Josefin Sans', color: Color(0xFF27214D))),
                               const SizedBox(width: 24),
                               InkWell(
                                onTap: () {
                                  setState(() {
                                    sum['countFood']++;
                                  });
                                },
                                child: SvgPicture.asset('assets/add_basket/icon_plus.svg')
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 106,
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/add_basket/icon_price_1.svg'),
                              Text((sum['countFood'] * argument['price']).toString(), style: const TextStyle(fontFamily: 'Josefin Sans', fontSize: 24, fontWeight: FontWeight.w500, color: Color(0xFF27214D)),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Container(height: 2, color: const Color(0xFFF3F3F3)),
                  const SizedBox(height: 32),
                  const Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Text('One Pack Contains:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, fontFamily: 'Josefin Sans', color: Color(0xFF27214D))),
                  ),
                  const SizedBox(height: 3),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Container(width: 175, height: 2, color: const Color(0xFFFFA451)),
                  ),
                  const SizedBox(height: 18),
                  const SizedBox(
                    width: 326,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text('Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Josefin Sans', color: Color(0xFF27214D))),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(height: 2, color: const Color(0xFFF3F3F3)),
                  const SizedBox(height: 24),
                  const SizedBox(
                    width: 284,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text('If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Josefin Sans', color: Color(0xFF27214D))),
                    ),
                  ),
                  const SizedBox(height: 43),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => setState(() {
                            heart = !heart;
                          }),
                          child: heart? const Icon(Icons.favorite, size: 48, color: Colors.red): SvgPicture.asset('assets/add_basket/icon_favourite.svg'),
                        ),
                        ElevatedButton(
                          onPressed: (){
                            orderImage.add(argument['image']);
                            orderName.add(argument['name']);
                            orderPrice.add(argument['price']);
                            Navigator.pushNamed(context, 'home_screen_one');
                          }, 
                          style: const ButtonStyle(
                            alignment: Alignment.center,
                            minimumSize: MaterialStatePropertyAll(Size(219, 56)),
                            backgroundColor: MaterialStatePropertyAll(Color(0xFFFFA451)),
                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                          ),
                          child: const Text('Add to basket', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'Josefin Sans', color: Color(0xFF27214D))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}