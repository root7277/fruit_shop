// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ShowModalBottomSheetText extends StatefulWidget {
  final String text;
  const ShowModalBottomSheetText({super.key, required this.text});

  @override
  State<ShowModalBottomSheetText> createState() => _ShowModalBottomSheetTextState();
}

class _ShowModalBottomSheetTextState extends State<ShowModalBottomSheetText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 40),
      child: Text(widget.text, style: const TextStyle(fontFamily: 'Josefin Sans', fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF27214D))),
    );
  }
}


class ShowModalBottomSheetContainer extends StatefulWidget {
  final String hintText;
  const ShowModalBottomSheetContainer({super.key, required this.hintText});

  @override
  State<ShowModalBottomSheetContainer> createState() => _ShowModalBottomSheetContainerState();
}

class _ShowModalBottomSheetContainerState extends State<ShowModalBottomSheetContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Container(
        width: 327,
        height: 56,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xFFF3F1F1)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 4),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              hintStyle: const TextStyle(fontFamily: 'Josefin Sans', fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xFFC2BDBD))
            ),
          ),
        ),
      ),
    );
  }
}

class PayWidget extends StatefulWidget {
  final String payText;
  const PayWidget({super.key, required this.payText});

  @override
  State<PayWidget> createState() => _PaywidgetState();
}

class _PaywidgetState extends State<PayWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 125,
        height: 56,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFFFA451),
            width: 2,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(child: Text(widget.payText, style: const TextStyle(fontFamily: "Josefin Sans", fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFFFFA451)),)),
      ),
    );
  }
}