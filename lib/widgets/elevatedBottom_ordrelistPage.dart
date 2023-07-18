import 'package:flutter/material.dart';
import '../widgets/showModalBottomSheet_widget.dart';


class ElevatedBottomOrderList extends StatefulWidget {
  const ElevatedBottomOrderList({super.key});

  @override
  State<ElevatedBottomOrderList> createState() => _ElevatedBottomOrderListState();
}

class _ElevatedBottomOrderListState extends State<ElevatedBottomOrderList> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        showModalBottomSheet(
          context: context, 
          isScrollControlled: true,
          builder: (BuildContext context){
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
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShowModalBottomSheetText(text: 'Delivery address'),
                      SizedBox(height: 16),
                      ShowModalBottomSheetContainer(hintText: '10th avenue, Lekki, Lagos State'),
                      SizedBox(height: 24),
                      ShowModalBottomSheetText(text: 'Number we can call'),
                      SizedBox(height: 16),
                      ShowModalBottomSheetContainer(hintText: '09090605708'),
                      SizedBox(height: 40),
                      Padding(
                        padding: EdgeInsets.only(left: 24, right: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PayWidget(payText: 'Pay on delivery'),
                            PayWidget(payText: 'Pay with card'),
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
                      child: const Center(child: Text('x', style: TextStyle(fontFamily: 'Josefin Sans', fontSize: 28, fontWeight: FontWeight.w600, color: Colors.black),)),
                    ),
                  ],
                ),
              ),
            ],
          );
        }
      );
      },
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Color(0xFFFFA451)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
        minimumSize: MaterialStatePropertyAll(Size(199, 56)),
      ), 
      child: const Text('Checkout', style: TextStyle(fontFamily: 'Josefin Sans', fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),)
    );
  }
}