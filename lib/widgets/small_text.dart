import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;

  SmallText({
    super.key,
    this.color = const Color(0xFF89dad0),
    required this.text,
    this.size = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color),
    );
  }
}
