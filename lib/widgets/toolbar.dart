import 'package:flutter/material.dart';

class ToolBar extends StatefulWidget {
  const ToolBar({super.key});

  @override
  State<ToolBar> createState() => _ToolBarState();
}

class _ToolBarState extends State<ToolBar> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          toolbar('Hottest', 0),
          toolbar('Popular', 1),
          toolbar('New combo', 2),
          toolbar('Top', 3),
        ],
      ),
    );
  }

  Widget toolbar( String text, int index){
  return InkWell(
    onTap: (){
      setState(() {
        current = index;
      });
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(fontSize: current == index? 24: 16, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w500, color: current == index? const Color(0xFF27214D): const Color(0xFF938DB5))),
        Container(
          width: 22,
          height: 2,
          color: current == index? const Color(0xFFFFA451): Colors.white,
        ),
      ],
    ),
  );
}
}

