import 'package:flutter/material.dart';

class InputSheet extends StatefulWidget {
  final String hintText;
  final double width;
  final double height;
  const InputSheet({super.key, required this.hintText, required this.width, required this.height});

  @override
  State<InputSheet> createState() => _InputSheetState();
}

class _InputSheetState extends State<InputSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xFFF3F1F1),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: TextField(
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: const TextStyle(fontFamily: 'Josefin Sans', fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xFFC2BDBD)),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}