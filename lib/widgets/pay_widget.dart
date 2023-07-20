import 'package:flutter/material.dart';

class PayWidget extends StatefulWidget {
  final String payText;
  final VoidCallback? onPressed;
  const PayWidget({super.key, required this.payText, this.onPressed});

  @override
  State<PayWidget> createState() => _PaywidgetState();
}

class _PaywidgetState extends State<PayWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
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