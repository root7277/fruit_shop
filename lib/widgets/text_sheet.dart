import 'package:flutter/material.dart';

class TextSheet extends StatefulWidget {
  final String text;
  const TextSheet({super.key, required this.text});

  @override
  State<TextSheet> createState() => _TextSheetState();
}

class _TextSheetState extends State<TextSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 40),
      child: Text(widget.text, style: const TextStyle(fontFamily: 'Josefin Sans', fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF27214D))),
    );
  }
}